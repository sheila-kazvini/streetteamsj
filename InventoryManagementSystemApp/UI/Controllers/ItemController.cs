using Microsoft.AspNetCore.Mvc;

namespace InventoryManagementSystemApp.Controllers
{
	public class ItemController : Controller
	{
		public IActionResult Index()
		{
			return View();
		}
	}
}
