using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(lab74.Startup))]
namespace lab74
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
