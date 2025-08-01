using Microsoft.EntityFrameworkCore;
using LicenseIssuanceService.Model;

namespace LicenseIssuanceService.Data
{
    public class AppDBContext : DbContext
    {
        public AppDBContext(DbContextOptions<AppDBContext> options) : base(options) { }
        public DbSet<LicenseIssuance> LicenseIssuance { get; set; }
    }
}




