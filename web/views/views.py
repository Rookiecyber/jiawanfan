from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import redirect
from django.urls import reverse
# Create your views here.
from myadmin.models import User, Shop, Category, Product
from utils.ResBody import failed, successful
from rest_framework.response import Response
from rest_framework.views import APIView
from datetime import datetime

def mycenter(request):
    '''点餐个人中心'''
    #return redirect(reverse("web_mycenter"))
    return render(request, "web/mycenter.html")

def webindex(request):
    #处理订单的增删改后从新刷新页面
    #尝试从session中获取名字为cartlist的购物车信息，若没有返回{}
    cartlist = request.session.get('cartlist',{})
    total_money = 0 #初始化一个总金额
    #遍历购物车中的菜品并累加总金额
    for vo in cartlist.values():
        total_money += vo['num']*vo['price']
    request.session['total_money'] = total_money #放进session
    #将session中的菜品和类别信息获取并items转换，可实现for in的遍历
    context = {'categorylist':request.session.get("categorylist",{}).items()}
    return render(request,"web/buy.html",context)

def selectshop(request):
    #进行店铺选择的处理
    shoplist = Shop.objects.filter(status=1)
    list1 = []
    for s in shoplist:
        shop = s.toDict()
        list1.append(shop)
    context = {'shoplist': list1}
    return render(request, 'web/selectshop.html', context)


def index(request):
    # 判断是否登录(在于session中没有webuser)
    if 'webuser' not in request.session:
        # 重定向到登录页
        return redirect(reverse("sign_in"))
    ''' 点餐首页 '''
    return redirect(reverse("selectshop"))


def buy(request,shopid):
    ''' 具体店铺点餐首页 '''
    # 尝试从session中获取名字为cartlist的购物车信息，若没有返回{}
    #cartlist = request.session.get('cartlist', {})
    cartlist={}
    request.session['cartlist']=cartlist
    total_money = 0  # 初始化一个总金额
    # 遍历购物车中的菜品并累加总金额
    for vo in cartlist.values():
        total_money += vo['num'] * vo['price']
    request.session['total_money'] = total_money  # 放进session
    # 将session中的菜品和类别信息获取并items转换，可实现for in的遍历


    # 获取当前店铺信息
    shopob = Shop.objects.get(id=shopid)
    request.session['shopinfo'] = shopob.toDict()
    # 获取当前店铺中所有的菜品类别和菜品信息
    clist = Category.objects.filter(shop_id=shopob.id, status=1)
    categorylist = dict()  # 菜品类别（内含有菜品信息）
    productlist = dict()  # 菜品信息
    # 遍历菜品类别信息
    for vo in clist:
        c = {'id': vo.id, 'name': vo.name, 'pids': []}
        plist = Product.objects.filter(category_id=vo.id, status=1)
        # 遍历当前类别下的所有菜品信息
        for p in plist:
            c['pids'].append(p.toDict())
            productlist[p.id] = p.toDict()
        categorylist[vo.id] = c
        # 将上面的结果存入到session中
    request.session['categorylist'] = categorylist
    request.session['productlist'] = productlist
    context = {'categorylist': request.session.get("categorylist", {}).items()}
    return render(request, "web/buy.html", context)


class Login(APIView):
    def get(self,request):
        return render(request, 'web/sign_in.html')

    def post(self,request):
        username=request.POST.get('username')
        pwd=request.POST.get('password')
        try:
            user=User.objects.get(username=username)
            import hashlib
            md5 = hashlib.md5()
            s = pwd + user.password_salt  # 从表单中获取密码并添加干扰值
            md5.update(s.encode('utf-8'))  # 将要产生md5的子串放进去
            if user.password_hash == md5.hexdigest():  # 获取md5值
                user = user.toDict()
                request.session.clear()
                request.session['webuser'] = user
                return Response(successful(user))
            else :
                return Response(failed('用户名或密码错误！请重新输入'))
        except Exception as e:
            print(e)
            return Response(failed('未找到该账号，请检查或注册。'))

class Register(APIView):
    def get(self,request):
        return render(request,'web/register.html')

    def post(self,request):
        try:
            ob = User()
            ob.username = request.POST['username']
            ob.nickname = request.POST['nickname']
            # 将当前员工信息的密码做md5处理
            import hashlib, random
            md5 = hashlib.md5()
            n = random.randint(100000, 999999)
            s = request.POST['password'] + str(n)  # 从表单中获取密码并添加干扰值
            md5.update(s.encode('utf-8'))  # 将要产生md5的子串放进去
            ob.password_hash = md5.hexdigest()  # 获取md5值
            ob.password_salt = n
            ob.status = 1
            ob.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
            ob.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
            ob.save()
            return redirect(reverse('sign_in'))
        except Exception as err:
            print(err)
            context={'err':'注册失败，请联系管理员。'}
            return render(request,'web/register.html',context)

def logout(request):
    ''' 执行前台退出操作 '''
    # del request.session['webuser']
    request.session.clear()
    return redirect(reverse('sign_in'))



