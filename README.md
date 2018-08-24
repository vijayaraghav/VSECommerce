# VSECommerce

Open Source eCommerce marketplace using ASP.NET Web API, C# and Angular JS. http://www.vsecommerce.com

* Documentation will be done based on request and demand. Priority based on various enquiries /queries.

With our VSECommerce engine, you can create, single store, multi store, hyper local ecommerce or even online movie site (Demo:http://moviesdemo.vbuy.in/Home.html). A flexible architectured product with High Performance, Easy to Setup, Customizable eCommerce marketplace solution.

Author : Sivakumar Anirudhan, VS Online Services Pvt ltd, India.

Youtube Video : eCommerce feature of VBuy.in : https://www.youtube.com/watch?v=_okHZ9odGbQ

Play Store : https://play.google.com/store/apps/details?id=in.vbuy.client

More about our VSEcommerce Engine 
 
 * Development of the project VBuy started in 2014, by team of experts with more than a decade of s/w engineering experience.
  
 * A VBuy.in platform. First end to end API based enterprise ecommerce application supporting map based, hyper local multi vendor solution
 
* This application was initially well architected project then (almost 4 years before) for our hyper local eCommerce Services in India. However, later in 2016 we changed our business model to Custom Software development and focusing on one of the exciting non-eCommerce project and some more custom software development projects.  Though, we want to get this project open source atleast an year back due to other commitments it got much delayed. But, still feel this solution can help many developers create eCommerce site with ease and great as the performance and flexibility is more than most of the current available eCommerce projects. For Business, our solution can be as Quick as a DIY for getting your eCommerce site within a week with customization, by even a beginner developer.


# Setting UP

SQL Script is available in SQL folder

Add reference to the dlls in the Reference_dll in case those are missing when you build
Most of the nuget packages should already be installed when you build the application. 
However if any of them is missed, please see the list of packages with version below.

* Microsoft.ASPNET.WebAPI.OWIN - 5.2.2
* Microsoft.ASPNET.WebPages - v3.2.6
* Microsoft.ASPNET.WebPAges.OAUTH - v3.2.6
* PagedList : Addded in Reference dll.

Our eCommerce engine(VSOnline.VSEcommerce) is end to end .NET API. So when you configure the VSECommerce api, corresponding api call from angularjs or frontend application (Here VSOnline.VBuy.Web) or your Android or any mobile application should change the reference.  In the application we changed VSOnline.VBuy.Web\app\services\landingservice.js endpoint alone which is matching the current Project URL 

 var endPoint = 'http://localhost:49475/api/Landing';. You need to change in other js files or create a global endpointbaseurl and use the same in all js files.
 
 
 
