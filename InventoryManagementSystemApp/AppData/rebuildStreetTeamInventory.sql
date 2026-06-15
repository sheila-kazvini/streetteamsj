BEGIN TRANSACTION;

-- Start clean
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Item;

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

INSERT INTO User (Name, Password, Type) VALUES ('admin', '12345', 'admin');


INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('eggs', 'baking', 'fridge', 1, 1, 'egg', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('baking powder', 'baking', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('baking soda', 'baking', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('Bisquick', 'baking', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('brown sugar', 'baking', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('corn starch', 'baking', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('cornmeal', 'baking', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('flour', 'baking', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('maple syrup', 'baking', 'shelf', 1, 1, 'ml', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('molasses', 'baking', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('pancake mix (complete)', 'baking', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('pancake mix (not complete)', 'baking', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('sugar', 'baking', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('chickpeas, cooked', 'beans', 'freezer', 800, 800, 'ml', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('kidney beans, red, cooked', 'beans', 'freezer 2', 2, 2, 'cup', 'bag', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('baked beans, any flavour', 'beans', 'shelf', 398, 398, 'ml', 'can', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('black beans', 'beans', 'shelf', 398, 398, 'ml', 'can', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('black beans', 'beans', 'shelf', 540, 540, 'ml', 'can', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('black turtle beans, dry', 'beans', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('chickpeas', 'beans', 'shelf', 540, 540, 'ml', 'can', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('chickpeas, split, dry', 'beans', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('chili beans, red, dry', 'beans', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('kidney beans, red', 'beans', 'shelf', 540, 540, 'ml', 'can', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('kidney beans, red, mini, dry', 'beans', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('kidney beans, white', 'beans', 'shelf', 540, 540, 'ml', 'can', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('lentils, brown, dry', 'beans', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('lentils, green, dry', 'beans', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('lentils, red, dry', 'beans', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('navy beans, dry', 'beans', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('yellow eyed beans, dry', 'beans', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('boursin creamy cheese - fig & balsamic', 'cheese', 'freezer 2', 150, 150, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('boursin creamy cheese - truffle salt', 'cheese', 'freezer 2', 150, 150, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('camembert cheese, double cream', 'cheese', 'freezer 2', 125, 125, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('cheddar, block', 'cheese', 'freezer 2', 150, 150, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('cheddar, block', 'cheese', 'freezer 2', 151, 151, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('cheddar, block', 'cheese', 'freezer 2', 152, 152, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('cheddar, block', 'cheese', 'freezer 2', 154, 154, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('cheddar, block', 'cheese', 'freezer 2', 155, 155, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('cheddar, sliced', 'cheese', 'freezer 2', 500, 500, 'g', 'package', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('cheese and assorted cheese cubes', 'cheese', 'freezer 2', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('goat''s milk, crumbles', 'cheese', 'freezer 2', 185, 185, 'g', 'package', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('marble, cubes', 'cheese', 'freezer 2', 172, 172, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('monterey jack, sliced', 'cheese', 'freezer 2', 170, 170, 'g', 'package', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('mozzarella + cheddar, shredded', 'cheese', 'freezer 2', 320, 320, 'g', 'bag', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('mozzarella, block', 'cheese', 'freezer 2', 200, 200, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('mozzarella, cubes', 'cheese', 'freezer 2', 240, 240, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('mozzarella, shredded', 'cheese', 'freezer 2', 130, 130, 'g', 'bag', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('mozzarella, shredded', 'cheese', 'freezer 2', 250, 250, 'g', 'bag', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('mozzarella, shredded', 'cheese', 'freezer 2', 320, 320, 'g', 'bag', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('oka artisan cheese, block', 'cheese', 'freezer 2', 170, 170, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('oka artisan cheese, block', 'cheese', 'freezer 2', 190, 190, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('oka artisan cheese, block', 'cheese', 'freezer 2', 208, 208, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('oka artisan cheese, block', 'cheese', 'freezer 2', 228, 228, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('parmesan, shredded', 'cheese', 'freezer 2', 250, 250, 'g', 'bag', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('rondelé creamy cheese spread, garlic & herb', 'cheese', 'freezer 2', 125, 125, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('swiss, block', 'cheese', 'freezer H', 85, 85, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('swiss, block', 'cheese', 'freezer H', 152, 152, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('swiss, block', 'cheese', 'freezer H', 153, 153, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('swiss, block', 'cheese', 'freezer H', 154, 154, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('swiss, block', 'cheese', 'freezer H', 155, 155, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('swiss, cubes', 'cheese', 'freezer 2', 240, 240, 'g', 'block', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('feta, crumbles', 'cheese', 'fridge', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('parmesan, grated', 'cheese', 'fridge', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('parmesan, shredded', 'cheese', 'fridge', 1000, 1000, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('processed cheese slice', 'cheese', 'fridge', 1, 1, NULL, 'slice', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('dijon mustard, bold & spicy', 'condiment', 'fridge', 1, 1, 'ml', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('dijon mustard, regular', 'condiment', 'fridge', 1, 1, 'ml', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('ketchup', 'condiment', 'fridge', 1, 1, 'ml', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('margarine (can be portioned smaller)', 'condiment', 'fridge', 0.5, 0.5, 'cup', 'square', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('mayonnaise', 'condiment', 'fridge', 1, 1, 'ml', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('mustard, yellow prepared', 'condiment', 'fridge', 1, 1, 'ml', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('relish, sweet pickle', 'condiment', 'fridge', 1, 1, 'ml', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('almond butter', 'condiment', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('barbecue sauce', 'condiment', 'shelf', 1, 1, 'ml', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('cheez whiz processed cheese spread', 'condiment', 'shelf', 450, 450, 'g', 'jar', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('cranberry sauce', 'condiment', 'shelf', 348, 348, 'ml', 'can', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('dill pickles, baby', 'condiment', 'shelf', 1000, 1000, 'ml', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('Miracle Whip/whipped dressing', 'condiment', 'shelf', 1, 1, 'ml', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('peanut butter', 'condiment', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('plum sauce', 'condiment', 'shelf', 15, 15, 'ml', 'packet', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('salad dressing, ranch', 'condiment', 'shelf', 1, 1, 'ml', 'portionable', 100, NULL);
INSERT INTO Item (Name, Category, Location, Capacity, UnitSize, UnitType, UnitFormat, Quantity, LastAudited) VALUES ('strawberry jam', 'condiment', 'shelf', 1, 1, 'g', 'portionable', 100, NULL);

COMMIT;

-- The End --
