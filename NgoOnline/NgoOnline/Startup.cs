using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NgoOnline.Startup))]
namespace NgoOnline
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
