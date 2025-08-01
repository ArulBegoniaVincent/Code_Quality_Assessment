using System.ComponentModel.DataAnnotations;

namespace LicenseIssuanceService.Model
{
    public class LicenseIssuance
    {
        [Key]
        [Required]
        public int LicenseIssuanceID { get; set; }

        [Required(ErrorMessage ="Name is required")]
        [MaxLength(50,ErrorMessage ="Name should be below 50 characters" )]
        public string? LicenseIssuerName { get; set; }

        [Required(ErrorMessage ="Enter valid date")]
        public DateTime LicenseExpirationDate { get; set; }
    }
}

