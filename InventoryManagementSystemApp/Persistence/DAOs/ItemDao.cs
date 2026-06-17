using InventoryManagementSystemApp.Domain.DAOs;
using InventoryManagementSystemApp.Domain.Entities;
using InventoryManagementSystemApp.Persistence.EF;
using System.Numerics;
using static InventoryManagementSystemApp.Persistence.DAOs.ItemDao;

namespace InventoryManagementSystemApp.Persistence.DAOs
{
	public class ItemDao : IItemDao
	{
		private readonly AppDbContext _db;

		public ItemDao(AppDbContext db)
		{
			_db = db;
		}
		public void SaveChanges()
		{
			_db.SaveChanges();
		}
		public void CreateItem(int categoryId, int locationId, int quantity, int unitFormatId, int unitTypeId, int unitSize)
		{
			Console.WriteLine("Reached dao layer");
			Item item = new Item();
			item.Name
			_db.Item.Add(item);
		}
		public void DeleteItem(int itemId)
		{
			var item = _db.Item.FirstOrDefault(i => i.Id == itemId);

			if (item != null)
			{
				_db.Item.Remove(item);
				_db.SaveChanges();
			}
		}
		public Item? FindItem(int itemId)
		{
			return _db.Item.Find(itemId);
		}
	}
}
