"""Efficient_Vertical_Mining URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin

from user import views as user_view
from admins import views as admin_view

urlpatterns = [
    url(r'^admin/', admin.site.urls),

    url('^$',user_view.index,name="index"),
    url('resister',user_view.resister,name="resister"),
    url('user_page',user_view.user_page,name="user_page"),
    url('category_page',user_view.category_page,name="category_page"),
    url('select_purchase_item_number',user_view.select_purchase_item_number,name="select_purchase_item_number"),
    url('item_two',user_view.item_two,name="item_two"),
    url('item_three',user_view.item_three,name="item_three"),
    url('item_four',user_view.item_four,name="item_four"),
    url('my_details',user_view.my_details,name="my_details"),
    url('two_item_analysis',user_view.two_item_analysis,name="two_item_analysis"),
    url('three_item_analysis',user_view.three_item_analysis,name="three_item_analysis"),
    url('four_item_analysis',user_view.four_item_analysis,name="four_item_analysis"),
    url('user_feedback',user_view.user_feedback,name="user_feedback"),


    url('login',admin_view.login,name="login"),
    url('admin_page',admin_view.admin_page,name="admin_page"),
    url('upload_page',admin_view.upload_page,name="upload_page"),
    url('view_userdetails',admin_view.view_userdetails,name="view_userdetails"),
    url('user_viewfeedback',admin_view.user_viewfeedback,name="user_viewfeedback"),
    url('two_product',admin_view.two_product,name="two_product"),
    url('three_product',admin_view.three_product,name="three_product"),
    url('four_product',admin_view.four_product,name="four_product"),
    url('new_page',admin_view.new_page,name="new_page"),
]
