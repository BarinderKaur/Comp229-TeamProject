using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Team_Project_Personal_Library_Comp229.Startup))]
namespace Team_Project_Personal_Library_Comp229
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
