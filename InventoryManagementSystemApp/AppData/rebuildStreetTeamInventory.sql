BEGIN TRANSACTION;

-- Start clean
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS UnitFormat;
DROP TABLE IF EXISTS UnitType;
DROP TABLE IF EXISTS Location;

CREATE TABLE User (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
	Password TEXT NOT NULL UNIQUE,
	Type TEXT NOT NULL
);

CREATE TABLE Item (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
	Name TEXT NOT NULL,
	Category TEXT NOT NULL,
	Location TEXT NOT NULL,
    Capacity INTEGER NOT NULL,
	UnitSize INTEGER NOT NULL,
	UnitType TEXT,
	UnitFormat TEXT NOT NULL,
	Quantity INTEGER NOT NULL,
	LastAudited TEXT
);

CREATE TABLE Location (
    LocationID INTEGER PRIMARY KEY AUTOINCREMENT,
    LocationName TEXT NOT NULL UNIQUE
);

CREATE TABLE UnitType (
    UnitTypeID INTEGER PRIMARY KEY AUTOINCREMENT,
    UnitTypeName TEXT NOT NULL UNIQUE
);

CREATE TABLE UnitFormat (
    UnitFormatID INTEGER PRIMARY KEY AUTOINCREMENT,
    UnitFormatName TEXT NOT NULL UNIQUE
);

CREATE TABLE Category (
    CategoryID INTEGER PRIMARY KEY AUTOINCREMENT,
    CategoryName TEXT NOT NULL UNIQUE
);

INSERT INTO Location (LocationName) VALUES 
('fridge'),
('shelf'),
('freezer'),
('freezer 2'),
('freezer H');

INSERT INTO UnitType (UnitTypeName) VALUES 
('egg'),
('g'),
('ml'),
('cup');

INSERT INTO UnitFormat (UnitFormatName) VALUES 
('portionable'),
('block'),
('bag'),
('can'),
('package'),
('slice'),
('square'),
('jar'),
('packet');

INSERT INTO Category (CategoryName) VALUES 
('baking'),
('beans'),
('cheese'),
('condiment');

INSERT INTO User (Name, Password, Type) VALUES ('admin', '12345', 'admin');

-- Category: Baking (CategoryID = 1)
INSERT INTO Item (Name, CategoryID, LocationID, UnitSize, UnitTypeID, UnitFormatID, Quantity, LastAudited) VALUES 
('eggs', 1, 1, 1, 1, 1, 100, NULL),
('baking powder', 1, 2, 1, 2, 1, 100, NULL),
('baking soda', 1, 2, 1, 2, 1, 100, NULL),
('Bisquick', 1, 2, 1, 2, 1, 100, NULL),
('brown sugar', 1, 2, 1, 2, 1, 100, NULL),
('corn starch', 1, 2, 1, 2, 1, 100, NULL),
('cornmeal', 1, 2, 1, 2, 1, 100, NULL),
('flour', 1, 2, 1, 2, 1, 100, NULL),
('maple syrup', 1, 2, 1, 3, 1, 100, NULL),
('molasses', 1, 2, 1, 2, 1, 100, NULL),
('pancake mix (complete)', 1, 2, 1, 2, 1, 100, NULL),
('pancake mix (not complete)', 1, 2, 1, 2, 1, 100, NULL),
('sugar', 1, 2, 1, 2, 1, 100, NULL);

-- Category: Beans (CategoryID = 2)
INSERT INTO Item (Name, CategoryID, LocationID, UnitSize, UnitTypeID, UnitFormatID, Quantity, LastAudited) VALUES 
('chickpeas, cooked', 2, 3, 800, 3, 2, 100, NULL),
('kidney beans, red, cooked', 2, 4, 2, 4, 3, 100, NULL),
('baked beans, any flavour', 2, 2, 398, 3, 4, 100, NULL),
('black beans', 2, 2, 398, 3, 4, 100, NULL),
('black beans', 2, 2, 540, 3, 4, 100, NULL),
('black turtle beans, dry', 2, 2, 1, 2, 1, 100, NULL),
('chickpeas', 2, 2, 540, 3, 4, 100, NULL),
('chickpeas, split, dry', 2, 2, 1, 2, 1, 100, NULL),
('chili beans, red, dry', 2, 2, 1, 2, 1, 100, NULL),
('kidney beans, red', 2, 2, 540, 3, 4, 100, NULL),
('kidney beans, red, mini, dry', 2, 2, 1, 2, 1, 100, NULL),
('kidney beans, white', 2, 2, 540, 3, 4, 100, NULL),
('lentils, brown, dry', 2, 2, 1, 2, 1, 100, NULL),
('lentils, green, dry', 2, 2, 1, 2, 1, 100, NULL),
('lentils, red, dry', 2, 2, 1, 2, 1, 100, NULL),
('navy beans, dry', 2, 2, 1, 2, 1, 100, NULL),
('yellow eyed beans, dry', 2, 2, 1, 2, 1, 100, NULL);

-- Category: Cheese (CategoryID = 3)
INSERT INTO Item (Name, CategoryID, LocationID, UnitSize, UnitTypeID, UnitFormatID, Quantity, LastAudited) VALUES 
('boursin creamy cheese - fig & balsamic', 3, 4, 150, 2, 2, 100, NULL),
('boursin creamy cheese - truffle salt', 3, 4, 150, 2, 2, 100, NULL),
('camembert cheese, double cream', 3, 4, 125, 2, 2, 100, NULL),
('cheddar, block', 3, 4, 150, 2, 2, 100, NULL),
('cheddar, block', 3, 4, 151, 2, 2, 100, NULL),
('cheddar, block', 3, 4, 152, 2, 2, 100, NULL),
('cheddar, block', 3, 4, 154, 2, 2, 100, NULL),
('cheddar, block', 3, 4, 155, 2, 2, 100, NULL),
('cheddar, sliced', 3, 4, 500, 2, 5, 100, NULL),
('cheese and assorted cheese cubes', 3, 4, 1, 2, 1, 100, NULL),
('goat''s milk, crumbles', 3, 4, 185, 2, 5, 100, NULL),
('marble, cubes', 3, 4, 172, 2, 2, 100, NULL),
('monterey jack, sliced', 3, 4, 170, 2, 5, 100, NULL),
('mozzarella + cheddar, shredded', 3, 4, 320, 2, 3, 100, NULL),
('mozzarella, block', 3, 4, 200, 2, 2, 100, NULL),
('mozzarella, cubes', 3, 4, 240, 2, 2, 100, NULL),
('mozzarella, shredded', 3, 4, 130, 2, 3, 100, NULL),
('mozzarella, shredded', 3, 4, 250, 2, 3, 100, NULL),
('mozzarella, shredded', 3, 4, 320, 2, 3, 100, NULL),
('oka artisan cheese, block', 3, 4, 170, 2, 2, 100, NULL),
('oka artisan cheese, block', 3, 4, 190, 2, 2, 100, NULL),
('oka artisan cheese, block', 3, 4, 208, 2, 2, 100, NULL),
('oka artisan cheese, block', 3, 4, 228, 2, 2, 100, NULL),
('parmesan, shredded', 3, 4, 250, 2, 3, 100, NULL),
('rondelé creamy cheese spread, garlic & herb', 3, 4, 125, 2, 2, 100, NULL),
('swiss, block', 3, 5, 85, 2, 2, 100, NULL),
('swiss, block', 3, 5, 152, 2, 2, 100, NULL),
('swiss, block', 3, 5, 153, 2, 2, 100, NULL),
('swiss, block', 3, 5, 154, 2, 2, 100, NULL),
('swiss, block', 3, 5, 155, 2, 2, 100, NULL),
('swiss, cubes', 3, 4, 240, 2, 2, 100, NULL),
('feta, crumbles', 3, 1, 1, 2, 1, 100, NULL),
('parmesan, grated', 3, 1, 1, 2, 1, 100, NULL),
('parmesan, shredded', 3, 1, 1000, 2, 1, 100, NULL),
('processed cheese slice', 3, 1, 1, NULL, 6, 100, NULL);

-- Category: Condiments (CategoryID = 4)
INSERT INTO Item (Name, CategoryID, LocationID, UnitSize, UnitTypeID, UnitFormatID, Quantity, LastAudited) VALUES 
('dijon mustard, bold & spicy', 4, 1, 1, 3, 1, 100, NULL),
('dijon mustard, regular', 4, 1, 1, 3, 1, 100, NULL),
('ketchup', 4, 1, 1, 3, 1, 100, NULL),
('margarine (can be portioned smaller)', 4, 1, 0.5, 4, 7, 100, NULL),
('mayonnaise', 4, 1, 1, 3, 1, 100, NULL),
('mustard, yellow prepared', 4, 1, 1, 3, 1, 100, NULL),
('relish, sweet pickle', 4, 1, 1, 3, 1, 100, NULL),
('almond butter', 4, 2, 1, 2, 1, 100, NULL),
('barbecue sauce', 4, 2, 1, 3, 1, 100, NULL),
('cheez whiz processed cheese spread', 4, 2, 450, 2, 8, 100, NULL),
('cranberry sauce', 4, 2, 348, 3, 4, 100, NULL),
('dill pickles, baby', 4, 2, 1000, 3, 1, 100, NULL),
('Miracle Whip/whipped dressing', 4, 2, 1, 3, 1, 100, NULL),
('peanut butter', 4, 2, 1, 2, 1, 100, NULL),
('plum sauce', 4, 2, 15, 3, 9, 100, NULL),
('salad dressing, ranch', 4, 2, 1, 3, 1, 100, NULL),
('strawberry jam', 4, 2, 1, 2, 1, 100, NULL);

COMMIT;

-- The End --
