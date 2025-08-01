using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using LicenseIssuanceService.Data;
using LicenseIssuanceService.Model;

namespace LicenseIssuanceService.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LicenseIssuanceController : ControllerBase
    {
        private readonly AppDBContext _context;
        public LicenseIssuanceController(AppDBContext context)
        {
            _context = context;
        }

        [HttpPost]
        public async Task<IActionResult> CreateLissesnceIssuance([FromBody] LicenseIssuance licenseIssuance)
        {
            _context.LicenseIssuance.Add(licenseIssuance);
            await _context.SaveChangesAsync();
            return CreatedAtAction(nameof(CreateLissesnceIssuance), licenseIssuance);
        }

        [HttpGet]
        public async Task<IActionResult> GetAllLissesnceIssuance()
        {
            var licenses = await _context.LicenseIssuance.ToListAsync();
            return Ok(licenses);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetLissesnceIssuance(int id)
        {
            var licenses = await _context.LicenseIssuance.FindAsync(id);
            if (licenses == null)
            {
                return NotFound();
            }
            return Ok(licenses);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateLissesnceIssuance(int id, LicenseIssuance licenseIssuance)
        {
            if (id != licenseIssuance.LicenseIssuanceID)
            {
                return BadRequest("ID mismatch");
            }

            var existingItem = await _context.LicenseIssuance.FindAsync(id);
            if (existingItem == null)
            {
                return NotFound();
            }
            existingItem.LicenseIssuanceID = licenseIssuance.LicenseIssuanceID;
            existingItem.LicenseIssuerName = licenseIssuance.LicenseIssuerName;
            existingItem.LicenseExpirationDate= licenseIssuance.LicenseExpirationDate;

            await _context.SaveChangesAsync();

            return NoContent();
        }


        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteLissesnceIssuance(int id)
        {
            var licenses = await _context.LicenseIssuance.FindAsync(id);
            if (licenses == null) return NotFound();

            _context.LicenseIssuance.Remove(licenses);
            await _context.SaveChangesAsync();
            return NoContent();
        }
    }
}
