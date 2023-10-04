from django.db.models import Count
from django.shortcuts import render, redirect

# Create your views here.
from admins.models import UploadModel
from user.forms import RegisterForms
from user.models import RegisterModel, Two_ProductModel, Three_ProductModel, Four_ProductModel, FeedbackModel


def index(request):
    if request.method=="POST":
        usid=request.POST.get('username')
        pswd = request.POST.get('password')
        try:
            check = RegisterModel.objects.get(userid=usid,password=pswd)
            request.session['userid']=check.id
            return redirect('category_page')
        except:
            pass
    return render(request,'user/index.html')

def resister(request):
    if request.method=="POST":
        forms=RegisterForms(request.POST)
        if forms.is_valid():
            forms.save()
            return redirect('index')
    else:
        forms=RegisterForms()
    return render(request,'user/resister.html',{'form':forms})

def user_page(request):


    return render(request,'user/user_page.html')

def category_page(request):
    usid = request.session['userid']
    us_id = RegisterModel.objects.get(id=usid)
    DS = ''
    a = UploadModel.objects.values('category').annotate(dcount=Count('category'))
    if request.method == "POST":
        DS = request.POST.get("ans")
        request.session['ds']=DS
        return redirect('select_purchase_item_number')
    return render(request,'user/category_page.html',{'a':a,'das':DS,'obje':us_id})

def select_purchase_item_number(request):
    usid = request.session['userid']
    us_id = RegisterModel.objects.get(id=usid)
    return render(request,'user/select_purchase_item_number.html',{'obje':us_id})

def item_two(request):
    use=request.session['userid']
    user_id=RegisterModel.objects.get(id=use)
    cate = request.session['ds']
    DS = ''
    pro2=''
    com=''
    a = UploadModel.objects.filter(category=cate)
    if request.method == "POST":
        DS = request.POST.get("ans")
        pro2=request.POST.get("pro2")
        com=DS+","+pro2
        Two_ProductModel.objects.create(usid=user_id,pro_name=com)
        return redirect('category_page')
    return render(request,'user/item_two.html',{'a':a,'das':DS,'pro2':pro2,'obje':user_id})

def item_three(request):
    use = request.session['userid']
    user_id = RegisterModel.objects.get(id=use)
    cate = request.session['ds']
    DS = ''
    pro2 = ''
    pro3=''
    com=''
    a = UploadModel.objects.filter(category=cate)
    if request.method == "POST":
        DS = request.POST.get("ans")
        pro2 = request.POST.get("pro2")
        pro3=request.POST.get("pro3")
        com = DS + "," + pro2 + "," +pro3
        Three_ProductModel.objects.create(usids=user_id,pro_names=com)
        return redirect('category_page')
    return render(request,'user/item_three.html',{'a':a,'das':DS,'pro2':pro2,'pro3':pro3,'obje':user_id})

def item_four(request):
    use = request.session['userid']
    user_id = RegisterModel.objects.get(id=use)
    cate = request.session['ds']
    DS = ''
    pro2 = ''
    pro3 = ''
    pro4 = ''
    com=''
    a = UploadModel.objects.filter(category=cate)
    if request.method == "POST":
        DS = request.POST.get("ans")
        pro2 = request.POST.get("pro2")
        pro3 = request.POST.get("pro3")
        pro4 = request.POST.get("pro4")
        com = DS + "," + pro2 + "," + pro3 + "," + pro4
        Four_ProductModel.objects.create(usidse=user_id,pro_namees=com)
        return redirect('category_page')
    return render(request,'user/item_four.html',{'a':a,'das':DS,'pro2':pro2,'pro3':pro3,'pro4':pro4,'obje':user_id})

def my_details(request):
    usid = request.session['userid']
    us_id = RegisterModel.objects.get(id=usid)
    return render(request,'user/my_details.html',{'obje':us_id})

def two_item_analysis(request):
    usid = request.session['userid']
    us_id = RegisterModel.objects.get(id=usid)
    chart = Two_ProductModel.objects.values('pro_name').annotate(dcount=Count('pro_name')).order_by('-dcount')[:5]
    return render(request,'user/two_item_analysis.html',{'obj':chart,'obje':us_id})

def three_item_analysis(request):
    usid = request.session['userid']
    us_id = RegisterModel.objects.get(id=usid)
    chart = Three_ProductModel.objects.values('pro_names').annotate(dcount=Count('pro_names')).order_by('-dcount')[:5]
    return render(request,'user/three_item_analysis.html',{'obj':chart,'obje':us_id})

def four_item_analysis(request):
    usid = request.session['userid']
    us_id = RegisterModel.objects.get(id=usid)
    chart = Four_ProductModel.objects.values('pro_namees').annotate(dcount=Count('pro_namees')).order_by('-dcount')[:5]
    return render(request,'user/four_item_analysis.html',{'obj':chart,'obje':us_id})

def user_feedback(request):
    uid = request.session['userid']
    objec = RegisterModel.objects.get(id=uid)
    if request.method == "POST":
        feed = request.POST.get('feedback')
        FeedbackModel.objects.create(usernames=objec, feedback=feed)
    return render(request,'user/user_feedback.html',{'obje':objec})