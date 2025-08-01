using LicenseIssuanceService.Data;
using System.ComponentModel.DataAnnotations;

namespace LicenseIssuanceService.Model
{
    public class LicenseIssuance
    {
        [Key]
        public int LicenseIssuanceID { get; set; }

        [Required]
        public string? LicenseIssuerName { get; set; }

        [Required]
        public DateTime LicenseExpirationDate { get; set; }
    }
}

