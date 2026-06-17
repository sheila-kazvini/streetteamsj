using InventoryManagementSystemApp.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using System.Numerics;

namespace InventoryManagementSystemApp.Persistence.EF
{
	public class AppDbContext : DbContext
	{
		public AppDbContext(DbContextOptions<AppDbContext> options)
			: base(options)
		{
		}

		public DbSet<Domain.Entities.Item> Item => Set<Domain.Entities.Item>();
		public DbSet<Domain.Entities.User> User => Set<Domain.Entities.User>();

		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			modelBuilder.Entity<User>().ToTable("User");
			modelBuilder.Entity<Item>().ToTable("Item");
		}
	}
}
