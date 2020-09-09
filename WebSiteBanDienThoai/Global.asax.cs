using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Providers.Entities;
using System.Web.Routing;
using System.Web.Security;
using WebSiteBanDienThoai;

namespace WebSiteBanDienThoai
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AuthConfig.RegisterOpenAuth();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            Application["SoNguoiOnLine"] = 0;
            Application["user"] = new List<User>();
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = 0;
            Session["user"] = null;
            Application.Lock();
            Application["SoNguoiOnline"] = (int)Application["SoNguoiOnline"] + 1;
            Application.UnLock();
        }


    }
}
