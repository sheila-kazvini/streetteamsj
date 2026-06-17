using InventoryManagementSystemApp.Domain.Entities;

namespace InventoryManagementSystemApp.Domain.DAOs
{
	public interface IItemDao
	{
		// Name, Category, Location, UnitSize, UnitType, UnitFormat, Quantity, LastAudited

		void CreateItem(string itemName, string itemCategory, string itemLocation, int unitSize, string unitType, string unitFormat, int itemQuantity );
		void DeleteItem(int itemId);
		Item? FindItem(int itemId);
		void SaveChanges();

	}
}