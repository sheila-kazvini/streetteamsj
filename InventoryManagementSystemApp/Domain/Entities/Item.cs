namespace InventoryManagementSystemApp.Domain.Entities
{
	public class Item
	{
		public int Id { get; set; }
		public string Name { get; set; }
		public string Category { get; set; }
		public string Location { get; set; }
		public int UnitSize { get; set; }
		public string UnitType { get; set; }
		public string UnitFormat { get; set; }
		public int Quantity { get; set; }
		public DateTime LastAudited { get; set; }
	}
}
