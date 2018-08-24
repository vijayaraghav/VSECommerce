# VSECommerce
Open Source eCommerce marketplace using ASP.NET Web API, C# and Angular JS. http://www.vsecommerce.com

*Documentation will be done based on request and the usage of this hyperlocal eCommerce solution.

With our VSECommerce source, you can create, single store, multi store, hyper local ecommerce and even a movie site. A flexible architectured product.

Author : Sivakumar Anirudhan, VS Online Services Pvt ltd, India.

Youtube Video : eCommerce feature of VBuy.in : https://www.youtube.com/watch?v=_okHZ9odGbQ

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
 
 
 
