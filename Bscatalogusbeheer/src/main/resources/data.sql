INSERT INTO supplier (id, name) VALUES ('1', 'Gazelle');
INSERT INTO supplier (id, name) VALUES ('2', 'Batavus');
INSERT INTO supplier (id, name) VALUES ('3', 'AXA');
INSERT INTO supplier (id, name) VALUES ('4', 'Shimano');
INSERT INTO supplier (id, name) VALUES ('5', 'Union');
INSERT INTO supplier (id, name) VALUES ('6', 'Bikkel');
INSERT INTO supplier (id, name) VALUES ('7', 'Raleigh');
INSERT INTO supplier (id, name) VALUES ('8', 'Koga Miyata');
INSERT INTO supplier (id, name) VALUES ('9', 'Eddy Merckx');
INSERT INTO supplier (id, name) VALUES ('10', 'Giant');

INSERT INTO category (id, name) VALUES ('1', 'Bikes');
INSERT INTO category (id, name) VALUES ('2', 'Components');
INSERT INTO category (id, name) VALUES ('3', 'Clothing');
INSERT INTO category (id, name) VALUES ('4', 'Accessories');
INSERT INTO category (id, name) VALUES ('5', 'Mountain Bikes');
INSERT INTO category (id, name) VALUES ('6', 'Road Bikes');
INSERT INTO category (id, name) VALUES ('7', 'Touring Bikes');
INSERT INTO category (id, name) VALUES ('8', 'Handlebars');
INSERT INTO category (id, name) VALUES ('9', 'Bottom Brackets');
INSERT INTO category (id, name) VALUES ('10', 'Brakes');
INSERT INTO category (id, name) VALUES ('11', 'Chains');
INSERT INTO category (id, name) VALUES ('12', 'Cranksets');
INSERT INTO category (id, name) VALUES ('13', 'Derailleurs');
INSERT INTO category (id, name) VALUES ('14', 'Forks');
INSERT INTO category (id, name) VALUES ('15', 'Headsets');
INSERT INTO category (id, name) VALUES ('16', 'Mountain Frames');
INSERT INTO category (id, name) VALUES ('17', 'Pedals');
INSERT INTO category (id, name) VALUES ('18', 'Road Frames');
INSERT INTO category (id, name) VALUES ('19', 'Saddles');
INSERT INTO category (id, name) VALUES ('20', 'Touring Frames');
INSERT INTO category (id, name) VALUES ('21', 'Wheels');
INSERT INTO category (id, name) VALUES ('22', 'Bib-Shorts');
INSERT INTO category (id, name) VALUES ('23', 'Caps');
INSERT INTO category (id, name) VALUES ('24', 'Gloves');
INSERT INTO category (id, name) VALUES ('25', 'Jerseys');
INSERT INTO category (id, name) VALUES ('26', 'Shorts');
INSERT INTO category (id, name) VALUES ('27', 'Socks');
INSERT INTO category (id, name) VALUES ('28', 'Tights');
INSERT INTO category (id, name) VALUES ('29', 'Vests');
INSERT INTO category (id, name) VALUES ('30', 'Bike Racks');
INSERT INTO category (id, name) VALUES ('31', 'Bike Stands');
INSERT INTO category (id, name) VALUES ('32', 'Bottles and Cages');
INSERT INTO category (id, name) VALUES ('33', 'Cleaners');
INSERT INTO category (id, name) VALUES ('34', 'Fenders');
INSERT INTO category (id, name) VALUES ('35', 'Helmets');
INSERT INTO category (id, name) VALUES ('36', 'Hydration Packs');
INSERT INTO category (id, name) VALUES ('37', 'Lights');
INSERT INTO category (id, name) VALUES ('38', 'Locks');
INSERT INTO category (id, name) VALUES ('39', 'Panniers');
INSERT INTO category (id, name) VALUES ('40', 'Pumps');
INSERT INTO category (id, name) VALUES ('41', 'Tires and Tubes');

INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('1', '8', 'HL Road Frame - Black, 58',
        'Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.',
        'no_image_available_small.gif', '1431.5', '1998-06-01', NULL, 'FR-R92B-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('2', '9', 'HL Road Frame - Red, 58',
        'Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.',
        'no_image_available_small.gif', '1431.5', '1998-06-01', NULL, 'FR-R92R-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('3', '2', 'Sport-100 Helmet, Red', 'Universal fit, well-vented, lightweight , snap-on visor.',
        'no_image_available_small.gif', '34.99', '2001-07-01', NULL, 'HL-U509-R');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('4', '5', 'Sport-100 Helmet, Black', 'Universal fit, well-vented, lightweight , snap-on visor.',
        'no_image_available_small.gif', '34.99', '2001-07-01', NULL, 'HL-U509');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('5', '6', 'Mountain Bike Socks, M',
        'Combination of natural and synthetic fibers stays dry and provides just the right cushioning.',
        'no_image_available_small.gif', '9.5', '2001-07-01', '2002-06-30', 'SO-B909-M');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('6', '2', 'Mountain Bike Socks, L',
        'Combination of natural and synthetic fibers stays dry and provides just the right cushioning.',
        'no_image_available_small.gif', '9.5', '2001-07-01', '2002-06-30', 'SO-B909-L');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('7', '8', 'Sport-100 Helmet, Blue', 'Universal fit, well-vented, lightweight , snap-on visor.',
        'no_image_available_small.gif', '34.99', '2001-07-01', NULL, 'HL-U509-B');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('8', '2', 'AWC Logo Cap', 'Traditional style with a flip-up brim; one-size fits all.',
        'no_image_available_small.gif', '8.99', '2001-07-01', NULL, 'CA-1098');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('9', '2', 'Long-Sleeve Logo Jersey, S', 'Unisex long-sleeve AWC logo microfiber cycling jersey',
        'awc_jersey_male_small.gif', '49.99', '2001-07-01', NULL, 'LJ-0192-S');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('10', '7', 'Long-Sleeve Logo Jersey, M', 'Unisex long-sleeve AWC logo microfiber cycling jersey',
        'awc_jersey_male_small.gif', '49.99', '2001-07-01', NULL, 'LJ-0192-M');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('11', '2', 'Long-Sleeve Logo Jersey, L', 'Unisex long-sleeve AWC logo microfiber cycling jersey',
        'awc_jersey_male_small.gif', '49.99', '2001-07-01', NULL, 'LJ-0192-L');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('12', '6', 'Long-Sleeve Logo Jersey, XL', 'Unisex long-sleeve AWC logo microfiber cycling jersey',
        'awc_jersey_male_small.gif', '49.99', '2001-07-01', NULL, 'LJ-0192-X');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('13', '3', 'HL Road Frame - Red, 62',
        'Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.',
        'no_image_available_small.gif', '1431.5', '2001-07-01', NULL, 'FR-R92R-62');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('14', '8', 'HL Road Frame - Red, 44',
        'Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.',
        'no_image_available_small.gif', '1431.5', '2001-07-01', NULL, 'FR-R92R-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('15', '8', 'HL Road Frame - Red, 48',
        'Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.',
        'no_image_available_small.gif', '1431.5', '2001-07-01', NULL, 'FR-R92R-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('16', '2', 'HL Road Frame - Red, 52',
        'Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.',
        'no_image_available_small.gif', '1431.5', '2001-07-01', NULL, 'FR-R92R-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('17', '6', 'HL Road Frame - Red, 56',
        'Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.',
        'no_image_available_small.gif', '1431.5', '2001-07-01', NULL, 'FR-R92R-56');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('18', '4', 'LL Road Frame - Black, 58',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', NULL, 'FR-R38B-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('19', '8', 'LL Road Frame - Black, 60',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', NULL, 'FR-R38B-60');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('20', '2', 'LL Road Frame - Black, 62',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', NULL, 'FR-R38B-62');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('21', '7', 'LL Road Frame - Red, 44',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', '2003-06-30', 'FR-R38R-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('22', '2', 'LL Road Frame - Red, 48',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', '2003-06-30', 'FR-R38R-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('23', '7', 'LL Road Frame - Red, 52',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', '2003-06-30', 'FR-R38R-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('24', '8', 'LL Road Frame - Red, 58',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', '2003-06-30', 'FR-R38R-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('25', '7', 'LL Road Frame - Red, 60',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', '2003-06-30', 'FR-R38R-60');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('26', '7', 'LL Road Frame - Red, 62',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', '2003-06-30', 'FR-R38R-62');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('27', '2', 'ML Road Frame - Red, 44',
        'Made from the same aluminum alloy as our top-of-the line HL frame, the ML features a lightweight down-tube milled to the perfect diameter for optimal strength. Men\'s version.',
        'no_image_available_small.gif', '594.83', '2001-07-01', '2002-06-30', 'FR-R72R-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('28', '3', 'ML Road Frame - Red, 48',
        'Made from the same aluminum alloy as our top-of-the line HL frame, the ML features a lightweight down-tube milled to the perfect diameter for optimal strength. Men\'s version.',
        'no_image_available_small.gif', '594.83', '2001-07-01', '2002-06-30', 'FR-R72R-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('29', '8', 'ML Road Frame - Red, 52',
        'Made from the same aluminum alloy as our top-of-the line HL frame, the ML features a lightweight down-tube milled to the perfect diameter for optimal strength. Men\'s version.',
        'no_image_available_small.gif', '594.83', '2001-07-01', '2002-06-30', 'FR-R72R-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('30', '5', 'ML Road Frame - Red, 58',
        'Made from the same aluminum alloy as our top-of-the line HL frame, the ML features a lightweight down-tube milled to the perfect diameter for optimal strength. Men\'s version.',
        'no_image_available_small.gif', '594.83', '2001-07-01', '2002-06-30', 'FR-R72R-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('31', '6', 'ML Road Frame - Red, 60',
        'Made from the same aluminum alloy as our top-of-the line HL frame, the ML features a lightweight down-tube milled to the perfect diameter for optimal strength. Men\'s version.',
        'no_image_available_small.gif', '594.83', '2001-07-01', '2002-06-30', 'FR-R72R-60');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('32', '7', 'LL Road Frame - Black, 44',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', NULL, 'FR-R38B-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('33', '7', 'LL Road Frame - Black, 48',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', NULL, 'FR-R38B-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('34', '6', 'LL Road Frame - Black, 52',
        'The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.',
        'no_image_available_small.gif', '337.22', '2001-07-01', NULL, 'FR-R38B-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('35', '4', 'HL Mountain Frame - Silver, 42',
        'Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.',
        'frame_silver_small.gif', '1364.5', '2001-07-01', NULL, 'FR-M94S-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('36', '5', 'HL Mountain Frame - Silver, 44',
        'Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.',
        'frame_silver_small.gif', '1364.5', '2001-07-01', '2002-06-30', 'FR-M94S-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('37', '1', 'HL Mountain Frame - Silver, 48',
        'Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.',
        'frame_silver_small.gif', '1364.5', '2001-07-01', '2002-06-30', 'FR-M94S-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('38', '4', 'HL Mountain Frame - Silver, 46',
        'Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.',
        'frame_silver_small.gif', '1364.5', '2001-07-01', NULL, 'FR-M94S-46');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('39', '5', 'HL Mountain Frame - Black, 42',
        'Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.',
        'frame_black_small.gif', '1349.6', '2001-07-01', NULL, 'FR-M94B-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('40', '8', 'HL Mountain Frame - Black, 44',
        'Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.',
        'frame_black_small.gif', '1349.6', '2001-07-01', '2002-06-30', 'FR-M94B-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('41', '7', 'HL Mountain Frame - Black, 48',
        'Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.',
        'frame_black_small.gif', '1349.6', '2001-07-01', '2002-06-30', 'FR-M94B-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('42', '5', 'HL Mountain Frame - Black, 46',
        'Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.',
        'frame_black_small.gif', '1349.6', '2001-07-01', NULL, 'FR-M94B-46');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('43', '9', 'HL Mountain Frame - Black, 38',
        'Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.',
        'frame_black_small.gif', '1349.6', '2001-07-01', NULL, 'FR-M94B-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('44', '8', 'HL Mountain Frame - Silver, 38',
        'Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.',
        'frame_silver_small.gif', '1364.5', '2001-07-01', NULL, 'FR-M94S-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('45', '2', 'Road-150 Red, 62',
        'This bike is ridden by race winners. Developed with the Adventure Works Cycles professional race team, it has a extremely light heat-treated aluminum frame, and steering that allows precision control.',
        'superlight_red_small.gif', '3578.27', '2001-07-01', '2002-06-30', 'BK-R93R-62');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('46', '4', 'Road-150 Red, 44',
        'This bike is ridden by race winners. Developed with the Adventure Works Cycles professional race team, it has a extremely light heat-treated aluminum frame, and steering that allows precision control.',
        'superlight_red_small.gif', '3578.27', '2001-07-01', '2002-06-30', 'BK-R93R-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('47', '5', 'Road-150 Red, 48',
        'This bike is ridden by race winners. Developed with the Adventure Works Cycles professional race team, it has a extremely light heat-treated aluminum frame, and steering that allows precision control.',
        'superlight_red_small.gif', '3578.27', '2001-07-01', '2002-06-30', 'BK-R93R-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('48', '5', 'Road-150 Red, 52',
        'This bike is ridden by race winners. Developed with the Adventure Works Cycles professional race team, it has a extremely light heat-treated aluminum frame, and steering that allows precision control.',
        'superlight_red_small.gif', '3578.27', '2001-07-01', '2002-06-30', 'BK-R93R-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('49', '6', 'Road-150 Red, 56',
        'This bike is ridden by race winners. Developed with the Adventure Works Cycles professional race team, it has a extremely light heat-treated aluminum frame, and steering that allows precision control.',
        'superlight_red_small.gif', '3578.27', '2001-07-01', '2002-06-30', 'BK-R93R-56');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('50', '5', 'Road-450 Red, 58',
        'A true multi-sport bike that offers streamlined riding and a revolutionary design. Aerodynamic design lets you ride with the pros, and the gearing will conquer hilly roads.',
        'roadster_red_small.gif', '1457.99', '2001-07-01', '2002-06-30', 'BK-R68R-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('51', '6', 'Road-450 Red, 60',
        'A true multi-sport bike that offers streamlined riding and a revolutionary design. Aerodynamic design lets you ride with the pros, and the gearing will conquer hilly roads.',
        'roadster_red_small.gif', '1457.99', '2001-07-01', '2002-06-30', 'BK-R68R-60');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('52', '9', 'Road-450 Red, 44',
        'A true multi-sport bike that offers streamlined riding and a revolutionary design. Aerodynamic design lets you ride with the pros, and the gearing will conquer hilly roads.',
        'roadster_red_small.gif', '1457.99', '2001-07-01', '2002-06-30', 'BK-R68R-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('53', '3', 'Road-450 Red, 48',
        'A true multi-sport bike that offers streamlined riding and a revolutionary design. Aerodynamic design lets you ride with the pros, and the gearing will conquer hilly roads.',
        'roadster_red_small.gif', '1457.99', '2001-07-01', '2002-06-30', 'BK-R68R-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('54', '2', 'Road-450 Red, 52',
        'A true multi-sport bike that offers streamlined riding and a revolutionary design. Aerodynamic design lets you ride with the pros, and the gearing will conquer hilly roads.',
        'roadster_red_small.gif', '1457.99', '2001-07-01', '2002-06-30', 'BK-R68R-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('55', '9', 'Road-650 Red, 58',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_red_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50R-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('56', '1', 'Road-650 Red, 60',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_red_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50R-60');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('57', '2', 'Road-650 Red, 62',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_red_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50R-62');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('58', '3', 'Road-650 Red, 44',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_red_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50R-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('59', '3', 'Road-650 Red, 48',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_red_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50R-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('60', '7', 'Road-650 Red, 52',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_red_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50R-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('61', '1', 'Road-650 Black, 58',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_black_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50B-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('62', '4', 'Road-650 Black, 60',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_black_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50B-60');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('63', '4', 'Road-650 Black, 62',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_black_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50B-62');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('64', '4', 'Road-650 Black, 44',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_black_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50B-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('65', '4', 'Road-650 Black, 48',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_black_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50B-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('66', '5', 'Road-650 Black, 52',
        'Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we\'re famous for.',
        'superlight_black_small.gif', '782.99', '2001-07-01', '2003-06-30', 'BK-R50B-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('67', '2', 'Mountain-100 Silver, 38',
        'Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.',
        'superlight_silver_small.gif', '3399.99', '2001-07-01', '2002-06-30', 'BK-M82S-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('68', '2', 'Mountain-100 Silver, 42',
        'Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.',
        'superlight_silver_small.gif', '3399.99', '2001-07-01', '2002-06-30', 'BK-M82S-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('69', '3', 'Mountain-100 Silver, 44',
        'Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.',
        'superlight_silver_small.gif', '3399.99', '2001-07-01', '2002-06-30', 'BK-M82S-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('70', '9', 'Mountain-100 Silver, 48',
        'Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.',
        'superlight_silver_small.gif', '3399.99', '2001-07-01', '2002-06-30', 'BK-M82S-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('71', '4', 'Mountain-100 Black, 38',
        'Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.',
        'superlight_black_small.gif', '3374.99', '2001-07-01', '2002-06-30', 'BK-M82B-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('72', '2', 'Mountain-100 Black, 42',
        'Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.',
        'superlight_black_small.gif', '3374.99', '2001-07-01', '2002-06-30', 'BK-M82B-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('73', '1', 'Mountain-100 Black, 44',
        'Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.',
        'superlight_black_small.gif', '3374.99', '2001-07-01', '2002-06-30', 'BK-M82B-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('74', '4', 'Mountain-100 Black, 48',
        'Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.',
        'superlight_black_small.gif', '3374.99', '2001-07-01', '2002-06-30', 'BK-M82B-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('75', '10', 'Mountain-200 Silver, 38',
        'Serious back-country riding. Perfect for all levels of competition. Uses the same HL Frame as the Mountain-100.',
        'hotrodbike_silver_small.gif', '2319.99', '2002-07-01', NULL, 'BK-M68S-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('76', '7', 'Mountain-200 Silver, 42',
        'Serious back-country riding. Perfect for all levels of competition. Uses the same HL Frame as the Mountain-100.',
        'hotrodbike_silver_small.gif', '2319.99', '2002-07-01', NULL, 'BK-M68S-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('77', '4', 'Mountain-200 Silver, 46',
        'Serious back-country riding. Perfect for all levels of competition. Uses the same HL Frame as the Mountain-100.',
        'hotrodbike_silver_small.gif', '2319.99', '2002-07-01', NULL, 'BK-M68S-46');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('78', '7', 'Mountain-200 Black, 38',
        'Serious back-country riding. Perfect for all levels of competition. Uses the same HL Frame as the Mountain-100.',
        'hotrodbike_black_small.gif', '2294.99', '2002-07-01', NULL, 'BK-M68B-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('79', '6', 'Mountain-200 Black, 42',
        'Serious back-country riding. Perfect for all levels of competition. Uses the same HL Frame as the Mountain-100.',
        'hotrodbike_black_small.gif', '2294.99', '2002-07-01', NULL, 'BK-M68B-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('80', '6', 'Mountain-200 Black, 46',
        'Serious back-country riding. Perfect for all levels of competition. Uses the same HL Frame as the Mountain-100.',
        'hotrodbike_black_small.gif', '2294.99', '2002-07-01', NULL, 'BK-M68B-46');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('81', '2', 'Mountain-300 Black, 38',
        'For true trail addicts.  An extremely durable bike that will go anywhere and keep you in control on challenging terrain - without breaking your budget.',
        'hotrodbike_black_small.gif', '1079.99', '2002-07-01', '2003-06-30', 'BK-M47B-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('82', '7', 'Mountain-300 Black, 40',
        'For true trail addicts.  An extremely durable bike that will go anywhere and keep you in control on challenging terrain - without breaking your budget.',
        'hotrodbike_black_small.gif', '1079.99', '2002-07-01', '2003-06-30', 'BK-M47B-40');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('83', '9', 'Mountain-300 Black, 44',
        'For true trail addicts.  An extremely durable bike that will go anywhere and keep you in control on challenging terrain - without breaking your budget.',
        'hotrodbike_black_small.gif', '1079.99', '2002-07-01', '2003-06-30', 'BK-M47B-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('84', '5', 'Mountain-300 Black, 48',
        'For true trail addicts.  An extremely durable bike that will go anywhere and keep you in control on challenging terrain - without breaking your budget.',
        'hotrodbike_black_small.gif', '1079.99', '2002-07-01', '2003-06-30', 'BK-M47B-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('85', '9', 'Road-250 Red, 44',
        'Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.',
        'racer_red_small.gif', '2443.35', '2002-07-01', '2003-06-30', 'BK-R89R-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('86', '2', 'Road-250 Red, 48',
        'Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.',
        'racer_red_small.gif', '2443.35', '2002-07-01', '2003-06-30', 'BK-R89R-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('87', '3', 'Road-250 Red, 52',
        'Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.',
        'racer_red_small.gif', '2443.35', '2002-07-01', '2003-06-30', 'BK-R89R-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('88', '4', 'Road-250 Red, 58',
        'Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.',
        'racer_red_small.gif', '2443.35', '2002-07-01', NULL, 'BK-R89R-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('89', '7', 'Road-250 Black, 44',
        'Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.',
        'racer_black_small.gif', '2443.35', '2002-07-01', NULL, 'BK-R89B-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('90', '2', 'Road-250 Black, 48',
        'Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.',
        'racer_black_small.gif', '2443.35', '2002-07-01', NULL, 'BK-R89B-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('91', '6', 'Road-250 Black, 52',
        'Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.',
        'racer_black_small.gif', '2443.35', '2002-07-01', NULL, 'BK-R89B-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('92', '6', 'Road-250 Black, 58',
        'Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.',
        'racer_black_small.gif', '2443.35', '2002-07-01', NULL, 'BK-R89B-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('93', '3', 'Road-550-W Yellow, 38',
        'Same technology as all of our Road series bikes, but the frame is sized for a woman.  Perfect all-around bike for road or racing.',
        'racer02_yellow_f_small.gif', '1120.49', '2002-07-01', NULL, 'BK-R64Y-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('94', '9', 'Road-550-W Yellow, 40',
        'Same technology as all of our Road series bikes, but the frame is sized for a woman.  Perfect all-around bike for road or racing.',
        'racer02_yellow_f_small.gif', '1120.49', '2002-07-01', NULL, 'BK-R64Y-40');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('95', '5', 'Road-550-W Yellow, 42',
        'Same technology as all of our Road series bikes, but the frame is sized for a woman.  Perfect all-around bike for road or racing.',
        'racer02_yellow_f_small.gif', '1120.49', '2002-07-01', NULL, 'BK-R64Y-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('96', '8', 'Road-550-W Yellow, 44',
        'Same technology as all of our Road series bikes, but the frame is sized for a woman.  Perfect all-around bike for road or racing.',
        'racer02_yellow_f_small.gif', '1120.49', '2002-07-01', NULL, 'BK-R64Y-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('97', '10', 'Road-550-W Yellow, 48',
        'Same technology as all of our Road series bikes, but the frame is sized for a woman.  Perfect all-around bike for road or racing.',
        'racer02_yellow_f_small.gif', '1120.49', '2002-07-01', NULL, 'BK-R64Y-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('98', '5', 'LL Fork', 'Stout design absorbs shock and offers more precise steering.', 'fork_small.gif', '148.22',
   '2002-07-01', '2003-06-30', 'FK-1639');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('99', '8', 'ML Fork', 'Composite road fork with an aluminum steerer tube.', 'fork_small.gif', '175.49', '2002-07-01',
   '2003-06-30', 'FK-5136');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('100', '9', 'HL Fork', 'High-performance carbon road fork with curved legs.', 'fork_small.gif', '229.49',
        '2002-07-01', '2003-06-30', 'FK-9939');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('101', '3', 'LL Headset', 'Threadless headset provides quality at an economical price.',
        'no_image_available_small.gif', '34.2', '2002-07-01', '2003-06-30', 'HS-0296');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('102', '7', 'ML Headset', 'Sealed cartridge keeps dirt out.', 'no_image_available_small.gif', '102.29', '2002-07-01',
   '2003-06-30', 'HS-2451');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('103', '10', 'HL Headset', 'High-quality 1\" threadless headset with a grease port for quick lubrication.',
        'no_image_available_small.gif', '124.73', '2002-07-01', '2003-06-30', 'HS-3479');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('104', '5', 'LL Mountain Handlebars', 'All-purpose bar for on or off-road.', 'handlebar_small.gif', '44.54',
        '2002-07-01', NULL, 'HB-M243');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('105', '4', 'ML Mountain Handlebars', 'Tough aluminum alloy bars for downhill.', 'no_image_available_small.gif',
        '61.92', '2002-07-01', NULL, 'HB-M763');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('106', '4', 'HL Mountain Handlebars', 'Flat bar strong enough for the pro circuit.', 'no_image_available_small.gif',
   '120.27', '2002-07-01', NULL, 'HB-M918');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('107', '3', 'LL Road Handlebars', 'Unique shape provides easier reach to the levers.',
        'no_image_available_small.gif', '44.54', '2002-07-01', NULL, 'HB-R504');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('108', '3', 'ML Road Handlebars', 'Anatomically shaped aluminum tube bar will suit all riders.',
        'no_image_available_small.gif', '61.92', '2002-07-01', NULL, 'HB-R720');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('109', '6', 'HL Road Handlebars', 'Designed for racers; high-end anatomically shaped bar from aluminum alloy.',
        'no_image_available_small.gif', '120.27', '2002-07-01', NULL, 'HB-R956');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('110', '1', 'ML Mountain Frame - Black, 38',
        'The ML frame is a heat-treated aluminum frame made with the same detail and quality as our HL frame. It offers superior performance. Men\'s version.',
        'no_image_available_small.gif', '348.76', '2002-07-01', '2003-06-30', 'FR-M63B-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('111', '2', 'LL Mountain Front Wheel', 'Replacement mountain wheel for entry-level rider.', 'wheel_small.gif',
        '60.75', '2002-07-01', '2003-06-30', 'FW-M423');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('112', '6', 'ML Mountain Front Wheel', 'Replacement mountain wheel for the casual to serious rider.',
        'wheel_small.gif', '209.03', '2002-07-01', '2003-06-30', 'FW-M762');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('113', '9', 'HL Mountain Front Wheel', 'High-performance mountain replacement wheel.', 'wheel_small.gif', '300.22',
   '2002-07-01', '2003-06-30', 'FW-M928');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('114', '1', 'LL Road Front Wheel', 'Replacement road front wheel for entry-level cyclist.', 'wheel_small.gif',
        '85.57', '2002-07-01', '2003-06-30', 'FW-R623');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('115', '9', 'ML Road Front Wheel', 'Sturdy alloy features a quick-release hub.', 'wheel_small.gif', '248.39',
        '2002-07-01', '2003-06-30', 'FW-R762');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('116', '1', 'HL Road Front Wheel', 'Strong wheel with double-walled rim.', 'wheel_small.gif', '330.06', '2002-07-01',
   '2003-06-30', 'FW-R820');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('117', '9', 'Touring Front Wheel', 'Aerodynamic rims for smooth riding.', 'wheel_small.gif', '218.01', '2002-07-01',
   '2003-06-30', 'FW-T905');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('118', '1', 'ML Road Frame-W - Yellow, 38',
        'Made from the same aluminum alloy as our top-of-the line HL frame, the ML features a lightweight down-tube milled to the perfect diameter for optimal strength. Women\'s version.',
        'no_image_available_small.gif', '594.83', '2002-07-01', NULL, 'FR-R72Y-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('119', '2', 'LL Mountain Rear Wheel', 'Replacement mountain wheel for entry-level rider.', 'wheel_small.gif',
        '87.75', '2002-07-01', '2003-06-30', 'RW-M423');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('120', '9', 'ML Mountain Rear Wheel', 'Replacement mountain wheel for the casual to serious rider.',
        'wheel_small.gif', '236.03', '2002-07-01', '2003-06-30', 'RW-M762');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('121', '5', 'HL Mountain Rear Wheel', 'High-performance mountain replacement wheel.', 'wheel_small.gif', '327.22',
   '2002-07-01', '2003-06-30', 'RW-M928');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('122', '7', 'LL Road Rear Wheel', 'Replacement road rear wheel for entry-level cyclist.', 'wheel_small.gif',
        '112.57', '2002-07-01', '2003-06-30', 'RW-R623');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('123', '7', 'ML Road Rear Wheel', 'Aluminum alloy rim with stainless steel spokes; built for speed.',
        'wheel_small.gif', '275.39', '2002-07-01', '2003-06-30', 'RW-R762');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('124', '7', 'HL Road Rear Wheel', 'Strong rear wheel with double-walled rim.', 'wheel_small.gif', '357.06',
        '2002-07-01', '2003-06-30', 'RW-R820');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('125', '1', 'Touring Rear Wheel', 'Excellent aerodynamic rims guarantee a smooth ride.', 'wheel_small.gif', '245.01',
   '2002-07-01', '2003-06-30', 'RW-T905');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('126', '1', 'ML Mountain Frame - Black, 40',
        'The ML frame is a heat-treated aluminum frame made with the same detail and quality as our HL frame. It offers superior performance. Women\'s version.',
        'no_image_available_small.gif', '348.76', '2002-07-01', '2003-06-30', 'FR-M63B-40');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('127', '3', 'ML Mountain Frame - Black, 44',
        'The ML frame is a heat-treated aluminum frame made with the same detail and quality as our HL frame. It offers superior performance. Women\'s version.',
        'no_image_available_small.gif', '348.76', '2002-07-01', '2003-06-30', 'FR-M63B-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('128', '8', 'ML Mountain Frame - Black, 48',
        'The ML frame is a heat-treated aluminum frame made with the same detail and quality as our HL frame. It offers superior performance. Women\'s version.',
        'no_image_available_small.gif', '348.76', '2002-07-01', '2003-06-30', 'FR-M63B-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('129', '9', 'ML Road Frame-W - Yellow, 40',
        'Made from the same aluminum alloy as our top-of-the line HL frame, the ML features a lightweight down-tube milled to the perfect diameter for optimal strength. Women\'s version.',
        'no_image_available_small.gif', '594.83', '2002-07-01', NULL, 'FR-R72Y-40');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('130', '4', 'ML Road Frame-W - Yellow, 42',
        'Made from the same aluminum alloy as our top-of-the line HL frame, the ML features a lightweight down-tube milled to the perfect diameter for optimal strength. Women\'s version.',
        'no_image_available_small.gif', '594.83', '2002-07-01', NULL, 'FR-R72Y-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('131', '9', 'ML Road Frame-W - Yellow, 44',
        'Made from the same aluminum alloy as our top-of-the line HL frame, the ML features a lightweight down-tube milled to the perfect diameter for optimal strength. Women\'s version.',
        'no_image_available_small.gif', '594.83', '2002-07-01', NULL, 'FR-R72Y-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('132', '1', 'ML Road Frame-W - Yellow, 48',
        'Made from the same aluminum alloy as our top-of-the line HL frame, the ML features a lightweight down-tube milled to the perfect diameter for optimal strength. Women\'s version.',
        'no_image_available_small.gif', '594.83', '2002-07-01', NULL, 'FR-R72Y-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('133', '4', 'HL Road Frame - Black, 62',
        'Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.',
        'no_image_available_small.gif', '1431.5', '2002-07-01', NULL, 'FR-R92B-62');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('134', '8', 'HL Road Frame - Black, 44',
        'Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.',
        'no_image_available_small.gif', '1431.5', '2002-07-01', NULL, 'FR-R92B-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('135', '4', 'HL Road Frame - Black, 48',
        'Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.',
        'no_image_available_small.gif', '1431.5', '2002-07-01', NULL, 'FR-R92B-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('136', '6', 'HL Road Frame - Black, 52',
        'Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.',
        'no_image_available_small.gif', '1431.5', '2002-07-01', NULL, 'FR-R92B-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('137', '6', 'Men\'s Sports Shorts, S',
        'Men\'s 8-panel racing shorts - lycra with an elastic waistband and leg grippers.', 'shorts_male_small.gif',
        '59.99', '2002-07-01', '2003-06-30', 'SH-M897-S');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('138', '5', 'Touring-Panniers, Large',
        'Durable, water-proof nylon construction with easy access. Large enough for weekend trips.',
        'no_image_available_small.gif', '125', '2002-07-01', '2003-06-30', 'PA-T100');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('139', '4', 'Cable Lock', 'Wraps to fit front and rear tires, carrier and 2 keys included.', 'bike_lock_small.gif',
   '25', '2002-07-01', '2003-06-30', 'LO-C100');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('140', '5', 'Minipump', 'Designed for convenience. Fits in your pocket. Aluminum barrel. 160psi rated.',
        'handpump_small.gif', '19.99', '2002-07-01', '2003-06-30', 'PU-0452');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('141', '10', 'Mountain Pump', 'Simple and light-weight. Emergency patches stored in handle.', 'bikepump_small.gif',
   '24.99', '2002-07-01', '2003-06-30', 'PU-M044');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('142', '4', 'Taillights - Battery-Powered', 'Affordable light for safe night riding - uses 3 AAA batteries',
        'tail_lights_small.gif', '13.99', '2002-07-01', '2003-06-30', 'LT-T990');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('143', '10', 'Headlights - Dual-Beam', 'Rechargeable dual-beam headlight.', 'double_headlight_small.gif', '34.99',
   '2002-07-01', '2003-06-30', 'LT-H902');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('144', '7', 'Headlights - Weatherproof', 'Rugged weatherproof headlight.', 'single_headlight_small.gif', '44.99',
   '2002-07-01', '2003-06-30', 'LT-H903');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('145', '5', 'Men\'s Sports Shorts, M',
        'Men\'s 8-panel racing shorts - lycra with an elastic waistband and leg grippers.', 'shorts_male_small.gif',
        '59.99', '2002-07-01', '2003-06-30', 'SH-M897-M');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('146', '9', 'Men\'s Sports Shorts, L',
        'Men\'s 8-panel racing shorts - lycra with an elastic waistband and leg grippers.', 'shorts_male_small.gif',
        '59.99', '2002-07-01', '2003-06-30', 'SH-M897-L');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('147', '5', 'Men\'s Sports Shorts, XL',
        'Men\'s 8-panel racing shorts - lycra with an elastic waistband and leg grippers.', 'shorts_male_small.gif',
        '59.99', '2002-07-01', '2003-06-30', 'SH-M897-X');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('148', '5', 'Women\'s Tights, S',
        'Warm spandex tights for winter riding; seamless chamois construction eliminates pressure points.',
        'no_image_available_small.gif', '74.99', '2002-07-01', '2003-06-30', 'TG-W091-S');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('149', '10', 'Women\'s Tights, M',
        'Warm spandex tights for winter riding; seamless chamois construction eliminates pressure points.',
        'no_image_available_small.gif', '74.99', '2002-07-01', '2003-06-30', 'TG-W091-M');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('150', '9', 'Women\'s Tights, L',
        'Warm spandex tights for winter riding; seamless chamois construction eliminates pressure points.',
        'no_image_available_small.gif', '74.99', '2002-07-01', '2003-06-30', 'TG-W091-L');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('151', '9', 'Men\'s Bib-Shorts, S',
        'Designed for the AWC team with stay-put straps, moisture-control, chamois padding, and leg grippers.',
        'no_image_available_small.gif', '89.99', '2002-07-01', '2003-06-30', 'SB-M891-S');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('152', '8', 'Men\'s Bib-Shorts, M',
        'Designed for the AWC team with stay-put straps, moisture-control, chamois padding, and leg grippers.',
        'no_image_available_small.gif', '89.99', '2002-07-01', '2003-06-30', 'SB-M891-M');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('153', '4', 'Men\'s Bib-Shorts, L',
        'Designed for the AWC team with stay-put straps, moisture-control, chamois padding, and leg grippers.',
        'no_image_available_small.gif', '89.99', '2002-07-01', '2003-06-30', 'SB-M891-L');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('154', '7', 'Half-Finger Gloves, S', 'Full padding, improved finger flex, durable palm, adjustable closure.',
        'no_image_available_small.gif', '24.49', '2002-07-01', NULL, 'GL-H102-S');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('155', '9', 'Half-Finger Gloves, M', 'Full padding, improved finger flex, durable palm, adjustable closure.',
        'no_image_available_small.gif', '24.49', '2002-07-01', NULL, 'GL-H102-M');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('156', '2', 'Half-Finger Gloves, L', 'Full padding, improved finger flex, durable palm, adjustable closure.',
        'no_image_available_small.gif', '24.49', '2002-07-01', NULL, 'GL-H102-L');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('157', '3', 'Full-Finger Gloves, S',
        'Synthetic palm, flexible knuckles, breathable mesh upper. Worn by the AWC team riders.',
        'no_image_available_small.gif', '37.99', '2002-07-01', '2003-06-30', 'GL-F110-S');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('158', '4', 'Full-Finger Gloves, M',
        'Synthetic palm, flexible knuckles, breathable mesh upper. Worn by the AWC team riders.',
        'no_image_available_small.gif', '37.99', '2002-07-01', '2003-06-30', 'GL-F110-M');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('159', '3', 'Full-Finger Gloves, L',
        'Synthetic palm, flexible knuckles, breathable mesh upper. Worn by the AWC team riders.',
        'no_image_available_small.gif', '37.99', '2002-07-01', '2003-06-30', 'GL-F110-L');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('160', '6', 'Classic Vest, S', 'Light-weight, wind-resistant, packs to fit into a pocket.',
        'no_image_available_small.gif', '63.5', '2003-07-01', NULL, 'VE-C304-S');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('161', '1', 'Classic Vest, M', 'Light-weight, wind-resistant, packs to fit into a pocket.',
        'no_image_available_small.gif', '63.5', '2003-07-01', NULL, 'VE-C304-M');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('162', '6', 'Classic Vest, L', 'Light-weight, wind-resistant, packs to fit into a pocket.',
        'no_image_available_small.gif', '63.5', '2003-07-01', NULL, 'VE-C304-L');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('163', '7', 'Women\'s Mountain Shorts, S',
        'Heavy duty, abrasion-resistant shorts feature seamless, lycra inner shorts with anti-bacterial chamois for comfort.',
        'shorts_female_small.gif', '69.99', '2003-07-01', NULL, 'SH-W890-S');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('164', '2', 'Women\'s Mountain Shorts, M',
        'Heavy duty, abrasion-resistant shorts feature seamless, lycra inner shorts with anti-bacterial chamois for comfort.',
        'shorts_female_small.gif', '69.99', '2003-07-01', NULL, 'SH-W890-M');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('165', '8', 'Women\'s Mountain Shorts, L',
        'Heavy duty, abrasion-resistant shorts feature seamless, lycra inner shorts with anti-bacterial chamois for comfort.',
        'shorts_female_small.gif', '69.99', '2003-07-01', NULL, 'SH-W890-L');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('166', '4', 'Water Bottle - 30 oz.', 'AWC logo water bottle - holds 30 oz; leak-proof.', 'water_bottle_small.gif',
   '4.99', '2003-07-01', NULL, 'WB-H098');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('167', '8', 'Mountain Bottle Cage', 'Tough aluminum cage holds bottle securly on tough terrain.',
        'no_image_available_small.gif', '9.99', '2003-07-01', NULL, 'BC-M005');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('168', '3', 'Road Bottle Cage',
        'Aluminum cage is lighter than our mountain version; perfect for long distance trips.',
        'water_bottle_cage_small.gif', '8.99', '2003-07-01', NULL, 'BC-R205');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('169', '9', 'Patch Kit/8 Patches', 'Includes 8 different size patches, glue and sandpaper.',
        'tirepatch_kit_small.gif', '2.29', '2003-07-01', NULL, 'PK-7098');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('170', '6', 'Racing Socks, M', 'Thin, lightweight and durable with cuffs that stay up.',
        'no_image_available_small.gif', '8.99', '2003-07-01', NULL, 'SO-R809-M');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('171', '3', 'Racing Socks, L', 'Thin, lightweight and durable with cuffs that stay up.',
        'no_image_available_small.gif', '8.99', '2003-07-01', NULL, 'SO-R809-L');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('172', '5', 'Hitch Rack - 4-Bike', 'Carries 4 bikes securely; steel construction, fits 2\" receiver hitch.',
        'no_image_available_small.gif', '120', '2003-07-01', NULL, 'RA-H123');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('173', '8', 'Bike Wash - Dissolver',
        'Washes off the toughest road grime; dissolves grease, environmentally safe. 1-liter bottle.',
        'no_image_available_small.gif', '7.95', '2003-07-01', NULL, 'CL-9009');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('174', '8', 'Fender Set - Mountain', 'Clip-on fenders fit most mountain bikes.', 'no_image_available_small.gif',
        '21.98', '2003-07-01', NULL, 'FE-6654');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('175', '6', 'All-Purpose Bike Stand',
        'Perfect all-purpose bike stand for working on your bike at home. Quick-adjusting clamps and steel construction.',
        'no_image_available_small.gif', '159', '2003-07-01', NULL, 'ST-1401');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('176', '2', 'Hydration Pack - 70 oz.',
        'Versatile 70 oz hydration pack offers extra storage, easy-fill access, and a waist belt.',
        'no_image_available_small.gif', '54.99', '2003-07-01', NULL, 'HY-1023-70');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('177', '4', 'Short-Sleeve Classic Jersey, S',
        'Short sleeve classic breathable jersey with superior moisture control, front zipper, and 3 back pockets.',
        'awc_tee_male_yellow_small.gif', '53.99', '2003-07-01', NULL, 'SJ-0194-S');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('178', '2', 'Short-Sleeve Classic Jersey, M',
        'Short sleeve classic breathable jersey with superior moisture control, front zipper, and 3 back pockets.',
        'awc_tee_male_yellow_small.gif', '53.99', '2003-07-01', NULL, 'SJ-0194-M');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('179', '4', 'Short-Sleeve Classic Jersey, L',
        'Short sleeve classic breathable jersey with superior moisture control, front zipper, and 3 back pockets.',
        'awc_tee_male_yellow_small.gif', '53.99', '2003-07-01', NULL, 'SJ-0194-L');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('180', '8', 'Short-Sleeve Classic Jersey, XL',
        'Short sleeve classic breathable jersey with superior moisture control, front zipper, and 3 back pockets.',
        'awc_tee_male_yellow_small.gif', '53.99', '2003-07-01', NULL, 'SJ-0194-X');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('181', '9', 'HL Touring Frame - Yellow, 60',
        'The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men\'s version.',
        'no_image_available_small.gif', '1003.91', '2003-07-01', NULL, 'FR-T98Y-60');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('182', '3', 'LL Touring Frame - Yellow, 62',
        'Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.',
        'frame_small.gif', '333.42', '2003-07-01', NULL, 'FR-T67Y-62');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('183', '3', 'HL Touring Frame - Yellow, 46',
        'The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men\'s version.',
        'no_image_available_small.gif', '1003.91', '2003-07-01', NULL, 'FR-T98Y-46');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('184', '5', 'HL Touring Frame - Yellow, 50',
        'The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men\'s version.',
        'no_image_available_small.gif', '1003.91', '2003-07-01', NULL, 'FR-T98Y-50');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('185', '8', 'HL Touring Frame - Yellow, 54',
        'The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men\'s version.',
        'no_image_available_small.gif', '1003.91', '2003-07-01', NULL, 'FR-T98Y-54');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('186', '8', 'HL Touring Frame - Blue, 46',
        'The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men\'s version.',
        'no_image_available_small.gif', '1003.91', '2003-07-01', NULL, 'FR-T98U-46');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('187', '8', 'HL Touring Frame - Blue, 50',
        'The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men\'s version.',
        'no_image_available_small.gif', '1003.91', '2003-07-01', NULL, 'FR-T98U-50');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('188', '5', 'HL Touring Frame - Blue, 54',
        'The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men\'s version.',
        'no_image_available_small.gif', '1003.91', '2003-07-01', NULL, 'FR-T98U-54');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('189', '7', 'HL Touring Frame - Blue, 60',
        'The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men\'s version.',
        'no_image_available_small.gif', '1003.91', '2003-07-01', NULL, 'FR-T98U-60');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('190', '7', 'Rear Derailleur', 'Wide-link design.', 'sprocket_small.gif', '121.46', '2003-07-01', NULL, 'RD-2308');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('191', '7', 'LL Touring Frame - Blue, 50',
        'Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.',
        'no_image_available_small.gif', '333.42', '2003-07-01', NULL, 'FR-T67U-50');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('192', '7', 'LL Touring Frame - Blue, 54',
        'Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.',
        'no_image_available_small.gif', '333.42', '2003-07-01', NULL, 'FR-T67U-54');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('193', '8', 'LL Touring Frame - Blue, 58',
        'Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.',
        'no_image_available_small.gif', '333.42', '2003-07-01', NULL, 'FR-T67U-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('194', '3', 'LL Touring Frame - Blue, 62',
        'Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.',
        'no_image_available_small.gif', '333.42', '2003-07-01', NULL, 'FR-T67U-62');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('195', '5', 'LL Touring Frame - Yellow, 44',
        'Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.',
        'frame_small.gif', '333.42', '2003-07-01', NULL, 'FR-T67Y-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('196', '6', 'LL Touring Frame - Yellow, 50',
        'Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.',
        'frame_small.gif', '333.42', '2003-07-01', NULL, 'FR-T67Y-50');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('197', '7', 'LL Touring Frame - Yellow, 54',
        'Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.',
        'frame_small.gif', '333.42', '2003-07-01', NULL, 'FR-T67Y-54');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('198', '7', 'LL Touring Frame - Yellow, 58',
        'Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.',
        'frame_small.gif', '333.42', '2003-07-01', NULL, 'FR-T67Y-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('199', '1', 'LL Touring Frame - Blue, 44',
        'Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.',
        'no_image_available_small.gif', '333.42', '2003-07-01', NULL, 'FR-T67U-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('200', '6', 'ML Mountain Frame-W - Silver, 40',
        'The ML frame is a heat-treated aluminum frame made with the same detail and quality as our HL frame. It offers superior performance. Men\'s version.',
        'no_image_available_small.gif', '364.09', '2003-07-01', NULL, 'FR-M63S-40');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('201', '9', 'ML Mountain Frame-W - Silver, 42',
        'The ML frame is a heat-treated aluminum frame made with the same detail and quality as our HL frame. It offers superior performance. Men\'s version.',
        'no_image_available_small.gif', '364.09', '2003-07-01', NULL, 'FR-M63S-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('202', '1', 'ML Mountain Frame-W - Silver, 46',
        'The ML frame is a heat-treated aluminum frame made with the same detail and quality as our HL frame. It offers superior performance. Men\'s version.',
        'no_image_available_small.gif', '364.09', '2003-07-01', NULL, 'FR-M63S-46');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('203', '10', 'LL Mountain Seat/Saddle', 'Synthetic leather. Features gel for increased comfort.', 'saddle_small.gif',
   '27.12', '2003-07-01', NULL, 'SE-M236');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('204', '5', 'ML Mountain Seat/Saddle', 'Designed to absorb shock.', 'no_image_available_small.gif', '39.14',
        '2003-07-01', NULL, 'SE-M798');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('205', '1', 'HL Mountain Seat/Saddle', 'Anatomic design for a full-day of riding in comfort. Durable leather.',
        'no_image_available_small.gif', '52.64', '2003-07-01', NULL, 'SE-M940');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('206', '5', 'LL Road Seat/Saddle', 'Lightweight foam-padded saddle.', 'no_image_available_small.gif', '27.12',
        '2003-07-01', NULL, 'SE-R581');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('207', '3', 'ML Road Seat/Saddle', 'Rubber bumpers absorb bumps.', 'no_image_available_small.gif', '39.14',
        '2003-07-01', NULL, 'SE-R908');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('208', '7', 'HL Road Seat/Saddle', 'Lightweight kevlar racing saddle. Leather.', 'no_image_available_small.gif',
        '52.64', '2003-07-01', NULL, 'SE-R995');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('209', '7', 'LL Touring Seat/Saddle', 'Comfortable, ergonomically shaped gel saddle.',
        'no_image_available_small.gif', '27.12', '2003-07-01', NULL, 'SE-T312');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('210', '6', 'ML Touring Seat/Saddle', 'New design relieves pressure for long rides.', 'no_image_available_small.gif',
   '39.14', '2003-07-01', NULL, 'SE-T762');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('211', '8', 'HL Touring Seat/Saddle', 'Cut-out shell for a more comfortable ride.', 'no_image_available_small.gif',
   '52.64', '2003-07-01', NULL, 'SE-T924');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('212', '2', 'LL Mountain Frame - Silver, 42',
        'Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.',
        'no_image_available_small.gif', '264.05', '2003-07-01', NULL, 'FR-M21S-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('213', '9', 'LL Mountain Frame - Silver, 44',
        'Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.',
        'no_image_available_small.gif', '264.05', '2003-07-01', NULL, 'FR-M21S-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('214', '10', 'LL Mountain Frame - Silver, 48',
        'Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.',
        'no_image_available_small.gif', '264.05', '2003-07-01', NULL, 'FR-M21S-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('215', '10', 'LL Mountain Frame - Silver, 52',
        'Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.',
        'no_image_available_small.gif', '264.05', '2003-07-01', NULL, 'FR-M21S-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('216', '1', 'Mountain Tire Tube', 'Self-sealing tube.', 'no_image_available_small.gif', '4.99', '2003-07-01', NULL,
   'TT-M928');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('217', '3', 'Road Tire Tube', 'Conventional all-purpose tube.', 'no_image_available_small.gif', '3.99', '2003-07-01',
   NULL, 'TT-R982');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('218', '9', 'Touring Tire Tube', 'General purpose tube.', 'innertube_small.gif', '4.99', '2003-07-01', NULL,
        'TT-T092');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('219', '1', 'LL Mountain Frame - Black, 42',
        'Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.',
        'no_image_available_small.gif', '249.79', '2003-07-01', NULL, 'FR-M21B-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('220', '8', 'LL Mountain Frame - Black, 44',
        'Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.',
        'no_image_available_small.gif', '249.79', '2003-07-01', NULL, 'FR-M21B-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('221', '4', 'LL Mountain Frame - Black, 48',
        'Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.',
        'no_image_available_small.gif', '249.79', '2003-07-01', NULL, 'FR-M21B-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('222', '4', 'LL Mountain Frame - Black, 52',
        'Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.',
        'no_image_available_small.gif', '249.79', '2003-07-01', NULL, 'FR-M21B-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('223', '4', 'LL Mountain Tire', 'Comparible traction, less expensive wire bead casing.',
        'no_image_available_small.gif', '24.99', '2003-07-01', NULL, 'TI-M267');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('224', '7', 'ML Mountain Tire', 'Great traction, high-density rubber.', 'no_image_available_small.gif', '29.99',
        '2003-07-01', NULL, 'TI-M602');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('225', '2', 'HL Mountain Tire', 'Incredible traction, lightweight carbon reinforced.', 'mb_tires_small.gif', '35',
   '2003-07-01', NULL, 'TI-M823');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('226', '7', 'LL Road Tire', 'Same great treads as more expensive tire with a less expensive wire bead casing.',
        'no_image_available_small.gif', '21.49', '2003-07-01', NULL, 'TI-R092');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('227', '10', 'ML Road Tire', 'Higher density rubber.', 'no_image_available_small.gif', '24.99', '2003-07-01', NULL,
   'TI-R628');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('228', '2', 'HL Road Tire', 'Lightweight carbon reinforced  for an unrivaled ride at an un-compromised weight.',
        'street_tires_small.gif', '32.6', '2003-07-01', NULL, 'TI-R982');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('229', '6', 'Touring Tire', 'High-density rubber.', 'no_image_available_small.gif', '28.99', '2003-07-01', NULL,
        'TI-T723');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('230', '2', 'LL Mountain Pedal', 'Expanded platform so you can ride in any shoes; great for all-around riding.',
        'pedal_small.gif', '40.49', '2003-07-01', NULL, 'PD-M282');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('231', '3', 'ML Mountain Pedal', 'Lightweight, durable, clipless pedal with adjustable tension.', 'pedal_small.gif',
   '62.09', '2003-07-01', NULL, 'PD-M340');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('232', '1', 'HL Mountain Pedal', 'Stainless steel; designed to shed mud easily.', 'pedal_small.gif', '80.99',
        '2003-07-01', NULL, 'PD-M562');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('233', '3', 'LL Road Pedal', 'Clipless pedals - aluminum.', 'clipless_pedals_small.gif', '40.49', '2003-07-01', NULL,
   'PD-R347');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('234', '10', 'ML Road Pedal', 'Lightweight aluminum alloy construction.', 'clipless_pedals_small.gif', '62.09',
        '2003-07-01', NULL, 'PD-R563');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('235', '7', 'HL Road Pedal', 'Top-of-the-line clipless pedals with adjustable tension.', 'clipless_pedals_small.gif',
   '80.99', '2003-07-01', NULL, 'PD-R853');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('236', '6', 'Touring Pedal', 'A stable pedal for all-day riding.', 'clipless_pedals_small.gif', '80.99',
        '2003-07-01', NULL, 'PD-T852');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('237', '9', 'ML Mountain Frame-W - Silver, 38',
        'The ML frame is a heat-treated aluminum frame made with the same detail and quality as our HL frame. It offers superior performance. Men\'s version.',
        'no_image_available_small.gif', '364.09', '2003-07-01', NULL, 'FR-M63S-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('238', '5', 'LL Mountain Frame - Black, 40',
        'Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.',
        'no_image_available_small.gif', '249.79', '2003-07-01', NULL, 'FR-M21B-40');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('239', '3', 'LL Mountain Frame - Silver, 40',
        'Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.',
        'no_image_available_small.gif', '264.05', '2003-07-01', NULL, 'FR-M21S-40');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('240', '6', 'Front Derailleur', 'Wide-link design.', 'no_image_available_small.gif', '91.49', '2003-07-01', NULL,
   'FD-2342');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('241', '2', 'LL Touring Handlebars', 'Unique shape reduces fatigue for entry level riders.',
        'no_image_available_small.gif', '46.09', '2003-07-01', NULL, 'HB-T721');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('242', '2', 'HL Touring Handlebars', 'A light yet stiff aluminum bar for long distance riding.',
        'no_image_available_small.gif', '91.57', '2003-07-01', NULL, 'HB-T928');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('243', '4', 'Front Brakes',
        'All-weather brake pads; provides superior stopping by applying more surface to the rim.',
        'no_image_available_small.gif', '106.5', '2003-07-01', NULL, 'FB-9873');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('244', '5', 'LL Crankset', 'Super rigid spindle.', 'no_image_available_small.gif', '175.49', '2003-07-01', NULL,
        'CS-4759');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('245', '7', 'ML Crankset', 'High-strength crank arm.', 'no_image_available_small.gif', '256.49', '2003-07-01', NULL,
   'CS-6583');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('246', '2', 'HL Crankset', 'Triple crankset; alumunim crank arm; flawless shifting.', 'no_image_available_small.gif',
   '404.99', '2003-07-01', NULL, 'CS-9183');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('247', '8', 'Chain', 'Superior shifting performance.', 'silver_chain_small.gif', '20.24', '2003-07-01', NULL,
        'CH-0234');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('248', '7', 'Touring-2000 Blue, 60',
        'The plush custom saddle keeps you riding all day,  and there\'s plenty of space to add panniers and bike bags to the newly-redesigned carrier.  This bike has stability when fully-loaded.',
        'julianax_r_02_blue_small.gif', '1214.85', '2003-07-01', NULL, 'BK-T44U-60');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('249', '5', 'Touring-1000 Yellow, 46',
        'Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.',
        'julianax_r_02_yellow_small.gif', '2384.07', '2003-07-01', NULL, 'BK-T79Y-46');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('250', '7', 'Touring-1000 Yellow, 50',
        'Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.',
        'julianax_r_02_yellow_small.gif', '2384.07', '2003-07-01', NULL, 'BK-T79Y-50');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('251', '8', 'Touring-1000 Yellow, 54',
        'Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.',
        'julianax_r_02_yellow_small.gif', '2384.07', '2003-07-01', NULL, 'BK-T79Y-54');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('252', '8', 'Touring-1000 Yellow, 60',
        'Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.',
        'julianax_r_02_yellow_small.gif', '2384.07', '2003-07-01', NULL, 'BK-T79Y-60');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('253', '3', 'Touring-3000 Blue, 54',
        'All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.',
        'julianax_r_02_blue_small.gif', '742.35', '2003-07-01', NULL, 'BK-T18U-54');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('254', '6', 'Touring-3000 Blue, 58',
        'All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.',
        'julianax_r_02_blue_small.gif', '742.35', '2003-07-01', NULL, 'BK-T18U-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('255', '8', 'Touring-3000 Blue, 62',
        'All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.',
        'julianax_r_02_blue_small.gif', '742.35', '2003-07-01', NULL, 'BK-T18U-62');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('256', '7', 'Touring-3000 Yellow, 44',
        'All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.',
        'julianax_r_02_yellow_small.gif', '742.35', '2003-07-01', NULL, 'BK-T18Y-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('257', '7', 'Touring-3000 Yellow, 50',
        'All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.',
        'julianax_r_02_yellow_small.gif', '742.35', '2003-07-01', NULL, 'BK-T18Y-50');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('258', '4', 'Touring-3000 Yellow, 54',
        'All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.',
        'julianax_r_02_yellow_small.gif', '742.35', '2003-07-01', NULL, 'BK-T18Y-54');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('259', '3', 'Touring-3000 Yellow, 58',
        'All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.',
        'julianax_r_02_yellow_small.gif', '742.35', '2003-07-01', NULL, 'BK-T18Y-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('260', '7', 'Touring-3000 Yellow, 62',
        'All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.',
        'julianax_r_02_yellow_small.gif', '742.35', '2003-07-01', NULL, 'BK-T18Y-62');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('261', '3', 'Touring-1000 Blue, 46',
        'Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.',
        'julianax_r_02_blue_small.gif', '2384.07', '2003-07-01', NULL, 'BK-T79U-46');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('262', '10', 'Touring-1000 Blue, 50',
        'Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.',
        'julianax_r_02_blue_small.gif', '2384.07', '2003-07-01', NULL, 'BK-T79U-50');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('263', '4', 'Touring-1000 Blue, 54',
        'Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.',
        'julianax_r_02_blue_small.gif', '2384.07', '2003-07-01', NULL, 'BK-T79U-54');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('264', '6', 'Touring-1000 Blue, 60',
        'Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.',
        'julianax_r_02_blue_small.gif', '2384.07', '2003-07-01', NULL, 'BK-T79U-60');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('265', '5', 'Touring-2000 Blue, 46',
        'The plush custom saddle keeps you riding all day,  and there\'s plenty of space to add panniers and bike bags to the newly-redesigned carrier.  This bike has stability when fully-loaded.',
        'julianax_r_02_blue_small.gif', '1214.85', '2003-07-01', NULL, 'BK-T44U-46');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('266', '6', 'Touring-2000 Blue, 50',
        'The plush custom saddle keeps you riding all day,  and there\'s plenty of space to add panniers and bike bags to the newly-redesigned carrier.  This bike has stability when fully-loaded.',
        'julianax_r_02_blue_small.gif', '1214.85', '2003-07-01', NULL, 'BK-T44U-50');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('267', '1', 'Touring-2000 Blue, 54',
        'The plush custom saddle keeps you riding all day,  and there\'s plenty of space to add panniers and bike bags to the newly-redesigned carrier.  This bike has stability when fully-loaded.',
        'julianax_r_02_blue_small.gif', '1214.85', '2003-07-01', NULL, 'BK-T44U-54');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('268', '4', 'Road-350-W Yellow, 40',
        'Cross-train, race, or just socialize on a sleek, aerodynamic bike designed for a woman.  Advanced seat technology provides comfort all day.',
        'roadster_yellow_f_small.gif', '1700.99', '2003-07-01', NULL, 'BK-R79Y-40');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('269', '9', 'Road-350-W Yellow, 42',
        'Cross-train, race, or just socialize on a sleek, aerodynamic bike designed for a woman.  Advanced seat technology provides comfort all day.',
        'roadster_yellow_f_small.gif', '1700.99', '2003-07-01', NULL, 'BK-R79Y-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('270', '5', 'Road-350-W Yellow, 44',
        'Cross-train, race, or just socialize on a sleek, aerodynamic bike designed for a woman.  Advanced seat technology provides comfort all day.',
        'roadster_yellow_f_small.gif', '1700.99', '2003-07-01', NULL, 'BK-R79Y-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('271', '9', 'Road-350-W Yellow, 48',
        'Cross-train, race, or just socialize on a sleek, aerodynamic bike designed for a woman.  Advanced seat technology provides comfort all day.',
        'roadster_yellow_f_small.gif', '1700.99', '2003-07-01', NULL, 'BK-R79Y-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('272', '5', 'Road-750 Black, 58',
        'Entry level adult bike; offers a comfortable ride cross-country or down the block. Quick-release hubs and rims.',
        'roadster_black_small.gif', '539.99', '2003-07-01', NULL, 'BK-R19B-58');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('273', '1', 'Touring-3000 Blue, 44',
        'All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.',
        'julianax_r_02_blue_small.gif', '742.35', '2003-07-01', NULL, 'BK-T18U-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('274', '8', 'Touring-3000 Blue, 50',
        'All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.',
        'julianax_r_02_blue_small.gif', '742.35', '2003-07-01', NULL, 'BK-T18U-50');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('275', '9', 'Mountain-400-W Silver, 38',
        'This bike delivers a high-level of performance on a budget. It is responsive and maneuverable, and offers peace-of-mind when you decide to go off-road.',
        'hotrodbike_f_small.gif', '769.49', '2003-07-01', NULL, 'BK-M38S-38');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('276', '2', 'Mountain-400-W Silver, 40',
        'This bike delivers a high-level of performance on a budget. It is responsive and maneuverable, and offers peace-of-mind when you decide to go off-road.',
        'hotrodbike_f_small.gif', '769.49', '2003-07-01', NULL, 'BK-M38S-40');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('277', '8', 'Mountain-400-W Silver, 42',
        'This bike delivers a high-level of performance on a budget. It is responsive and maneuverable, and offers peace-of-mind when you decide to go off-road.',
        'hotrodbike_f_small.gif', '769.49', '2003-07-01', NULL, 'BK-M38S-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('278', '4', 'Mountain-400-W Silver, 46',
        'This bike delivers a high-level of performance on a budget. It is responsive and maneuverable, and offers peace-of-mind when you decide to go off-road.',
        'hotrodbike_f_small.gif', '769.49', '2003-07-01', NULL, 'BK-M38S-46');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('279', '2', 'Mountain-500 Silver, 40',
        'Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.',
        'no_image_available_small.gif', '564.99', '2003-07-01', NULL, 'BK-M18S-40');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('280', '2', 'Mountain-500 Silver, 42',
        'Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.',
        'no_image_available_small.gif', '564.99', '2003-07-01', NULL, 'BK-M18S-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('281', '9', 'Mountain-500 Silver, 44',
        'Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.',
        'no_image_available_small.gif', '564.99', '2003-07-01', NULL, 'BK-M18S-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('282', '7', 'Mountain-500 Silver, 48',
        'Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.',
        'no_image_available_small.gif', '564.99', '2003-07-01', NULL, 'BK-M18S-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('283', '4', 'Mountain-500 Silver, 52',
        'Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.',
        'no_image_available_small.gif', '564.99', '2003-07-01', NULL, 'BK-M18S-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('284', '7', 'Mountain-500 Black, 40',
        'Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.',
        'no_image_available_small.gif', '539.99', '2003-07-01', NULL, 'BK-M18B-40');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('285', '2', 'Mountain-500 Black, 42',
        'Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.',
        'no_image_available_small.gif', '539.99', '2003-07-01', NULL, 'BK-M18B-42');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('286', '5', 'Mountain-500 Black, 44',
        'Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.',
        'no_image_available_small.gif', '539.99', '2003-07-01', NULL, 'BK-M18B-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('287', '2', 'Mountain-500 Black, 48',
        'Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.',
        'no_image_available_small.gif', '539.99', '2003-07-01', NULL, 'BK-M18B-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('288', '1', 'Mountain-500 Black, 52',
        'Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.',
        'no_image_available_small.gif', '539.99', '2003-07-01', NULL, 'BK-M18B-52');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('289', '4', 'LL Bottom Bracket', 'Chromoly steel.', 'no_image_available_small.gif', '53.99', '2003-07-01', NULL,
        'BB-7421');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('290', '5', 'ML Bottom Bracket', 'Aluminum alloy cups; large diameter spindle.', 'no_image_available_small.gif',
        '101.24', '2003-07-01', NULL, 'BB-8107');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES
  ('291', '3', 'HL Bottom Bracket', 'Aluminum alloy cups and a hollow axle.', 'no_image_available_small.gif', '121.49',
   '2003-07-01', NULL, 'BB-9108');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('292', '2', 'Road-750 Black, 44',
        'Entry level adult bike; offers a comfortable ride cross-country or down the block. Quick-release hubs and rims.',
        'roadster_black_small.gif', '539.99', '2003-07-01', NULL, 'BK-R19B-44');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('293', '1', 'Road-750 Black, 48',
        'Entry level adult bike; offers a comfortable ride cross-country or down the block. Quick-release hubs and rims.',
        'roadster_black_small.gif', '539.99', '2003-07-01', NULL, 'BK-R19B-48');
INSERT INTO product (id, supplier_id, name, description, image, price, available_from, available_until, supplier_product_id)
VALUES ('294', '6', 'Road-750 Black, 52',
        'Entry level adult bike; offers a comfortable ride cross-country or down the block. Quick-release hubs and rims.',
        'roadster_black_small.gif', '539.99', '2003-07-01', NULL, 'BK-R19B-52');

# UPDATE product SET image = '' where image = '';

UPDATE product
SET
  image = 'data:image/gif;base64,R0lGODlhUAAxAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgICAgMDAwP8AAAD/AP//AAAA//8A/wD//////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMwAAZgAAmQAAzAAA/wAzAAAzMwAzZgAzmQAzzAAz/wBmAABmMwBmZgBmmQBmzABm/wCZAACZMwCZZgCZmQCZzACZ/wDMAADMMwDMZgDMmQDMzADM/wD/AAD/MwD/ZgD/mQD/zAD//zMAADMAMzMAZjMAmTMAzDMA/zMzADMzMzMzZjMzmTMzzDMz/zNmADNmMzNmZjNmmTNmzDNm/zOZADOZMzOZZjOZmTOZzDOZ/zPMADPMMzPMZjPMmTPMzDPM/zP/ADP/MzP/ZjP/mTP/zDP//2YAAGYAM2YAZmYAmWYAzGYA/2YzAGYzM2YzZmYzmWYzzGYz/2ZmAGZmM2ZmZmZmmWZmzGZm/2aZAGaZM2aZZmaZmWaZzGaZ/2bMAGbMM2bMZmbMmWbMzGbM/2b/AGb/M2b/Zmb/mWb/zGb//5kAAJkAM5kAZpkAmZkAzJkA/5kzAJkzM5kzZpkzmZkzzJkz/5lmAJlmM5lmZplmmZlmzJlm/5mZAJmZM5mZZpmZmZmZzJmZ/5nMAJnMM5nMZpnMmZnMzJnM/5n/AJn/M5n/Zpn/mZn/zJn//8wAAMwAM8wAZswAmcwAzMwA/8wzAMwzM8wzZswzmcwzzMwz/8xmAMxmM8xmZsxmmcxmzMxm/8yZAMyZM8yZZsyZmcyZzMyZ/8zMAMzMM8zMZszMmczMzMzM/8z/AMz/M8z/Zsz/mcz/zMz///8AAP8AM/8AZv8Amf8AzP8A//8zAP8zM/8zZv8zmf8zzP8z//9mAP9mM/9mZv9mmf9mzP9m//+ZAP+ZM/+ZZv+Zmf+ZzP+Z///MAP/MM//MZv/Mmf/MzP/M////AP//M///Zv//mf//zP///yH5BAEAABAALAAAAABQADEAAAj/AP8JHEiwoMGDCBMqXMiwocOHECNKnEixosWLGDNq3Mixo8ePIEOKHEmypMmTKFOqXJkRBYqBLhfGZPnQ5ct/MxPmpMnQpsCZNm/CfBnTZ86gQ3HeRMoRadGlQpUqJfoUZ9KnVH9GxVhUKtCoVaWKnZrVK9SmVMPuVHvWrFisPjd+LbuW7tmvb8t6nJuXIFutfbH2lSt07ta/eeOy3clTYuGtjS8yjUy5suXLmDHHdRjWIGPGIjdDBA3YL2SQVY+mvQsVL16yqLOqfuyWtlHZbTv+nY176G67H38DTs068GrSkoMSN+62+fKQqrW2Xe6aem7CSaf6fq7ceevTmcOLEh9Pvrz58+jTq1/Pvr379+8DAgA7'
WHERE image = 'no_image_available_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'awc_jersey_male_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'awc_tee_male_yellow_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'bike_lock_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'bikepump_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'clipless_pedals_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'double_headlight_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,R0lGODlhUAAxAPcAAAAAAAgAAAgIAAgICBAAABAIABAICBAQEBgICBgQEBgQGCEAACEQACEQECkAACkQECkpKSkxKTEhITEpITExKTk5OUIhIUo5OUpCQkpKUlJSUmM5QmNjWnNaWnNjY3NrWnNzc3N7e3t7e4Rra4Rrc4R7hISEc4SEhISEjISMhISMjIx7e4yEe4yEhIyEjIyMhIyMjIyMlIyUlIytrZR7e5SEhJSMjJSMlJSUlJSUnJSclJScnJxzc5yEhJyUjJyUlJyUnJyclJycnJycpZylnJylpZylrZytrZy1taV7e6WcnKWcpaWlpaWtpa17e62UlK2lpa2lra2tpa2tra2tta21ra21tbWtrbWttbW1tbW1vbW9vb21tb21vb29vb29xr3Gxsa1tca9tca9vca9xsbGvcbGxsbGzsbW1s7Gvc7Gxs7Gzs7Ozs7O1s7W1tbGxtbOztbO1tbW1tbW3t7W1t7W3t7e3t7v7+fWzufW1ufW3ufW5+fe1ufe3ufe5+fn5+fv7+/n5+/n7+/v5+/v7+/v9+/39/fO1vfv5/fv7/fv9/f37/f39/f3//f////n3v/v7//39//3////7///9////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////ywAAAAAUAAxAAAI/gArCRxIsGAlRoT+VKIksFEkMydOwIBxA1ClSAYzFvTigskSGEsYVXIUydFBjShTEiRkR44fRwxHsjlxwwWMKCJVZrSDgkSHDRYeQFjYSCBDSSZj6tTJcssVNTkr2YHhwgaMK0sNOgLAtWsB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'
WHERE image = 'fork_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'frame_black_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'frame_silver_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,R0lGODlhUAAxAPcAAMYAAM4AANYAAN4AAM4IANYIAN4IAMYICM4ICNYICN4ICN4QANYQCMYQEM4QENYQEN4QENYYCNYYEN4YEM4YGNYYGN4YGNYhGN4hGNYhId4hIb0pId4pIcYpKdYpKd4pKaU5Oa1SUrVCQr0xMb1KSr1SUsY5OcY5Qt4xGN4xKc4xMdYxMc45OcZCQs5CQstMTN4xMd45Kd45Md45Od5COd5CQt5KOd5KQt5KSt5SSudCGOdCKedCQudKQudKSudSSnt7hIR7hISEhISEjK1aWqlrb5x7e6WEhISMlIyEjIyMjIyMlJSMjJyIjKWEjKWMjJSMlIyUlJSUlJyUlKWUlK2UlIyUnJSUnJyUnK2UnJyclJScnJycnKWcnKWcpaWlpbVaWshlY9pSUtpoaOdaQudSUudaUudeWudjY+drY+dra+9ra+9zY+dza+dzc+x+a72EhK+ZlrWcnK2lped7e9yMiu97e++Ef++Me++MhO+MjO+UjO+UlO+clO+cnO+lnKWlraW1ta2lra2tpa2tra21ta21vbWtrbWttbW1tbW1vbW9vbW9xrXOzr2lpb2ttb21tb21vb29tb29vb29xr3Gzr3Ozsa1tca9vca9xsbGxs6trc61tc69vc7Gxs7Oxt6lpeelpe+lpe+tjO+tpfetpd6tre+trfetrfe1nPe1re+1tfe1tda1vfe9nPe9pfzTl/e9tffOtd69vee9ve/Gvfe9vffGvdbGxt69xt7GxufGxvfGxvfOxvfexv/vxsbGzsbOzs7Gzs7OztbOztbWzt7WzufOzvfOzvfezv/vzsbW1s7W1tbO1tbW1t7W1t7e1vfW1vfe1v/W1v/e1s7e3tbW3tbe3t7W3t7e3ufe3vfn3v/e3v/n3v//3s7n59bn597e597n5+fe5+fn5+/e5+/n5/fn5//n5//v5///597n797v7+fv7+/n7+/v7/fv7/f37//v7//37///7+f39+/v9+/39/fv9/f39//39///9+////f////3/////ywAAAAAUAAxAAAI/gD/vZMiBNO/ffr27Tu48FcBAAFc/Zs4UeG/hAkRKtS4MaNCjxz35duHbdgwb97UXfy4MSTHf/mgJNHE0B/FhbACBCAQi6LPg0BZtgRJdOi+fs2GPdNYUajRjROlJJnT7yfFNwAECJihRg+y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'
WHERE image = 'frame_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,R0lGODlhRQAyAPcAAOLi4//ulPyPMcg2OPBKK/3dyvuWjv/++fhuNoqGifr6+tWSkNPS1Os1Lry8vdxpaOsBAMwAAPz8/OoWAfb19P2rjKGiofJxVbcBAf/3pfvGmdLHyJqTlNUAAPu3pdkAAJmamd3c3qZTVOX29fdaBf/+6//2yfV1aN4+L/Dx8enp6pKLjdAAANFIR8G8vP/ndvv//t0AAP//4///9P312ukiA5GRkK2jpO5YS83LzPzr1///+KmfotcYFPf8/PWJY52enpyJiMygn///3MTCxNfg4fihbeEAAP3qyvePUf/Jo5mAgf25TZWXlvt/FaGdnb6ys/798rKko/7Xhufi4vTw76yqqrWys/Pq5OPc3uCgnevs7eTEvvQyCPyaZZSVle3u7+YAAJaXl6mamfVDAJOVlKSJiejv8P706OgKAZN5efD49/79/ubm5qOUlaNtcbKqrJOXlv/GWpOUmuuCeZaYmPz18Kemp56Zmv3+/fXu6vX3+vz8/rUzNeW5ueIcGZSQkf77/dbW2PAJAPr59r6lpv//tf/ntfAlAbiqqsUAAJiYl42Bha2wtNTZ2fXw8f79/bONkv7x4dYjIeMPAM5lYZWWlcjHx7m4uKShoc7Q0fMbAMsNDZmbmtjW1pSNj5aVk+/w75ucnP39+5uXmJ6fntG9vpsAAKekqsELDOkMDt/f4NYLAJeWleQGAOICAP///v///f7/////+//+//7+///+/v39/f7//v/++/7//JWVlf/+/cQdH+EHB66wr/E4EN19eOAKAO4oIvnRw69AQdcMC/z69/ZdLvv8/NrZ2JOTk+MQB/z7+qmVlfXg3//n466WnaCPj+w2EP7//fv7+6Oko9wRE87Ozrinpv7+/f78+ba+wsvIx52cnMLKzf+nCa+foLtbX/Lz8/7u7fT08vT09I6Njvb39p+gn5ubnMOrq/j4+O7q6v7iotHP0J2Yn9+vrFoAAKSlpKKjo+Lp68q/w98EAuvr67Kvr5WTk+/Ryv67Pf7+/v/++P///yH5BAAAAAAALAAAAABFADIAAAj/AP0JHDgw17+DCBMmhHWAoMOHB3LFUqgwVkOIBzI+dGiQosd/uTY6zCgR1keEsEIOzDgrlstYuS5uzGXSY7+KMgmSpFnzZEJeAg/EgtUzociWJ28qnDVyFtF//W4pPSgVYb+pB136/LfR6VaPsWaJHfqv1sGrV6FKvVqrVlWsX0eWiPKvqsI1W+B+hYr21kFZB9mY3avwYayo/Wz9k2CSwj4h4c6c1evzVlVZPp4hkVFiW1rCXHWilaAghbkUfh5MujZgQRRZt/LkwXX2oC3ACQHrxhIvGAoUAkz8o0b5pMNZoxRIALOFAoBG4u6FgRCGWQXYeWQpRZs9O0JZx3g//0DRI8YRCBCGGdn2URYhOzN2GCVo8JY5dKWJfKt0JAyZCUeQEQBUZkXF1z+4wVAFFwu0MIkxwoQxSBofxFDDIK7gsI9VB2HR4B8k8FMCSLY4NNFBFLSBDhj1nHCEeWHE4J8GfyE4lSyhMNhCDywckQYEE1DywYvn+QjBJMFsCJgGKPiCHgSDIKCBDHnoZJJSAAgiCzYDxPDBkEd8EMYEFxgxRQYy/KMLMVo80EIvLMQA5SusdBABCx18KScEMbzC5yQ4/MBEDdOFMR16iKAhC0Gz1FaXII5o0kIMHeQZQwQdHHGEKxMAQwABDfxhTIVHvBIBph2wUCGeH7DQo6EQdP+AXgwxCNOBIixMQAIl06lCzqJBnXiTXwow4MgDraL6Aa600hpGmCzc+UEEGMiDqaunYPClnT1CYOQrlEwwyLMdsBIGCYRCoIoOofnTaEKW/YPOGlpwciqrl/YYpiKKeEmtIndeGnC2m5AwQatxngeleYNQF0YaHTSrrg7A+nMiVAfRIu8WG/SRagRffglymAFTmiq/uN6ziRPgaFCACVM4AXG0H7wia6rmeZlqpmE48dpAF2OscTkqMFDJtKhWeqp5YSodAcBH1NCAEhmUMGJWMxyCTA2tVhoGC7jmibCsEDAxQ8VBI0QLOtVowsUFPSid560ReOlqtBFMgIAXL/z/Q9QsMh2AVAAnNPBBpa7e6XSlBEiSRz9BFWXVOMWeMQMxHhCw8+FzJ/4BGXIMcZBIBB0EjRET+Kt4tHHGYMA/2oTWEUWjbDFOCOMgRMMFdlbqO+tdHNIo6RD9EwsSAkzQe7KyNkCMLGYJNLtCsqiwCgDs/JMHG7KU8MM9eFZ6+AcTKAES8TqVhFAGKGCAJ56ctODHZP4cIDlCtqSwhQoK+P2XDEmIgavmdg8ByIAp6BuIVxKiAmm8QRwD6EUfFqCHuqRFKD5JAT62wAfqmWAarEvVBPqWQIKk7R9ESMAcUMGDaPBgD/8YxeOuckKF4GMVbUgBRSSBgvfhaRgzKKEJ/xXSj3wwIgEJOMcc4JEFWtACFmj5yhZW4QkXeCIZN6ENISqhqm0No11CfBdC8EEKQIDiE59YASPsEQha1OIzHunJFgCQAyhAgQoJgYEQUiG2DwxDBkARYv2C5okEtGIRiyDFCm7wiFrAADfFqUk/5ugAOLggBArJgcfEhggSCtJdNYEEJs7RBEsg0gYuQBAM8uAoitRkFGAQxBWg0A0wKKQIIlBVpY7ghCHQQpAYRBEpyhCHJoihE7vIRxUSUpyEwDIEmHABA1iZkHq8gRMhy5UcZhCLMCYEAKSMQx1AoI50PMEKl8BGCKrxlX6MQgWCIMIlbMkhH4SjFyH7Egky0P/NEorxH5iwgRjEME4g3OEO6QCCGDJxBUy8wyf9SIYK3pGDNhARMAwoBqu+9AoPpKmE9rMNKWxgCUuUoQl1qEMnSjGPlmbipR+Boi3YUTQASICIeajFHiLBxy5+IA0eEF0Cg7kKQOziC5YoZSnLcNI6iMIC9LjDVtDRBv59pINUKIYiLHW4VxjwHzl5iBgxkYCSiqEJTWCqGEQBAhCgVKUeceI/xrEKFdzUJrVgwz+0kAqQhSxTyJDEDrpZIsMgxAplFcMi6tCEL9igFZnwhigmCwIxnMQcgghB9j7Sj7z+ww4XiJb4jpAnRDBBPmk6SEgMcqI2kGIZi9iFSuuwDH3/XIIC2MDELywAAlFwdoqb5exNJCALHSCjVSGjFAsocQEDCKACZ5rBP3ZgCITkIAGL+EITFtHWZZSiDYFgAy3YAQBsOICz7OjfQXChGIXgYhTa6EcHaYAAAYovuZo6AiJIgAAc4IAEHoBBLTCxAkB8YaCi6MQyMPEPxbT3H+r9ChTdKxtIbI+4Q/DCH/CWT9/t8kktqMI4SMGBT+zikKUoxS6soEOqiBc0HsFFHrShDamwIRCAQcIPJnEqD/dRRtRpQTkA8IkytmKgpaBHOpZhBXMwUyFP2QpZKKIxW7S3AHSYxMmUJaNCPcAHBF6BPkhRWRCkwwLpiMMv0JGQBx8k/8onsUgNKaKLZyShBgJUXJepQwcYAOITHOAAHhZhiS+AwALWAEIZfhFhGCPEIsH8SixMwARkdKEGrujydAwwghUA2htPOKolzAzVdHzhCo12tEUGeb82s0Gv/yhBBl4gADJsYgJkIAExuJEAQGcCDxwg86gtQOxSlAETqQZNSC4SEYl4RBtOpEUuSgAJXAzBHUqgmiFKgIpe8+AGbuAADzKB1EMTGwiWcMBdHU0UWLzEJa2mSEMUQoNj3IER0pBCOKQhjURAoQzLGPa5y+CAZjr6JGuRymD8phVTLCEIY0jEGIIQhA1QARvnWIahiW0BRV/i4I5OCxwTwo5CLCHfia9wwxLCsUwU2uALX+gEx4HQCZT0I76T+Uw/dqALXYwiJpBwYj9owQZIxLezt3jjVSRAmSyYAeLZkEIQ1LCBBtfFASTdhcyJ7VurHB2OaMEFbkBzFbsopBkOD0I4EuEMNUijHQmpxig1Lgp60MMCCVE6YtDSDzbcAh2hUAEAVhECZTDg8If3hDKuh48UsEMCElD6QUIRCnNU4xHrMIM0spENM6gBCrZYt7wwsYyjbj0gADs='
WHERE image = 'handlebar_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'handpump_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'hotrodbike_black_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'hotrodbike_f_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'hotrodbike_silver_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'innertube_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'julianax_r_02_blue_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,R0lGODlhUAAxAPcAAHh8fWhvLcjQOnR3edrb2+nqK/b2O/f30/b2GsHDw/39Qvz8/Lq8vPb29mVoacrMy+TjOu7t7u7t8Ly7yJSYs1NZWP3+JLOrbm98qfr6+vj4+KqrrNrZ6LbFYfv7e3t9IKGkpP7+/uXlabK0tE90TLe2rfT09Ono6srImPf4i+blWX+Eg+XmiIaIVfn58KW3o9TUiujoDTxCRbe4KpKUleTjH/Ly8kFHTObm6cfHpisyOJqcnTE3OXeHeoODhfT09k1RVObmd8LHvPn5/iMnK/HxVc3M0d/fLuXl5qShjIqNjP//ZOrqqG1wcRohJsbBbP//W+7tt56ioFRaYsS5oGt0UairtSctMfv8mhIYHGdrcrzA1JWdmOXlS9DR0rLArV5jZaepqsTEx9XV1Tg8Q0dMUQwTF+Dg4erq687R1P//URYdIZeimvLy88vXxNzcZff2+Pz8/42Pkf7+Avj4+pmacP394dTKcvDx8LS4t4uWOsjIwP//7/v7p/Hw8fTy9PPyBP3+99joRIeUhv//buXkmrG3EPLy/tPOw/z8wOzt4oaJiq+xsIKNhvX14be3utbW16yuqeLi46KnpKWmqPHy+eHa3Pv6/fn29pSalYSFiZualfX1Xml1bgEIC9bZ1m9weevr+I2Tk4Soe/v7+PT0Yr6/wNjY28bGw//8/Pf09f79Dd7j4AYOEens6iwxL+Xo5v3+//b39fT29u/v8efi4sfUEdLT0//+/P39/ff39/Ly8PLw8X1/gvv7+5+fo8jJzPn6+vHx8uzs7vn5+fn6+NPU1O/v797eftTT183Vkt3bnd7e3NHV093e4PHxD87JecLGLdfXreTk71ZgGvb2bvf36Lm8t/HwyuTk5c7P0Ojowx8iI+rj5LW0xPz5+bi4uV1eX9jX1KenrcnKxbavqfX19vX29cfHyPb49k9RTNTVyaKhP6SSbsrQgYuNgd7cQPj6YJSMnMS9Pufn6JaXme7w79/YuPLv7MnTvfPz8/Pz9PP09Ozu7Pn8+v///yH5BAAAAAAALAAAAABQADEAAAj/AP8JHEiwoMGDCBMqXMiwYcM8DiA5nEixosMdPNY8ssixY8UFG8wQqbDBo8mTCMeEAwJGiqtiGlAKzNXGnMyKp+QQoJeABptPqCRSNFZPjhIfi5T0kmNKioNbNx3ayCUwgjMrK5pkq4juV5gwIGjcuAIECI8dDaJWDAYJBShvJ02VAZLN1Bi1HNcdmceEj8lfZH7h7RgHhYE5FqB4SBTIYi4fcgZ3HHPHwrMCBtRAWZIiEa6JZ8qgk2yxUo5Sc1alYAEBs2ZCWA40NAJqGOmKaZBZWAXFgp042IK0zgwF9oEQCENQoHCbIg5EF+DVMNDb7z/gwjFDUdzHjsFDGLY0/3cYZw8VeeUcQVDAPhZBX8GHb/bQHXkcK1NOjW/IAUY7Cof840gNvRGCXEGkYCOCfEssZo0Ahkizn0ELUCXQJejAcwEHA2ETwxIWYJFQMVGIAE8XnCxxmAJRTPgPAZQAEE4F4TgAwC9WoIAAPAEOxEQMhFiQyIEIxVFINAjMMUcMLRaUwRiM1KNJLz7U8wgzHYEDxhVOEHHFl18SscYFFsBgEAvPgOgdQgcEoUI1CMQggmwERcAIGDJw6cSeXfIQDiMxOWQMGE5kkYUON9wwVxky6PDKGxY4UBJBsaiAABQKNFZQmygWAQELjhS0QBhA6LBGFk7oAEQFUwBxgw5OrP9RhikNbfBKFmvwAMYK9eRhSgIMLKJFFUvMkMUVPuhCUDEQZBaPewIdIEIXpRTRBQvWGIRGE1ecyoMWlIBjhBfoMBCGEmDcUKgmCyi0AzdZENHEBkY0oOyBYWjxhBpVoCqvCQQNqIYCKcSiYAyciPBGIS4c5AwQ8F4xgBjZhJDBP7lcggst+OyhRBmttNKELwhtAC8Z9RiRgS8LNJCLLhUO884bKnjTC5dEgHJxhzFgqkIMgBzxBhOkIITDDWZkIQMlJ/yjiwbELABzLnD88wMSYVRghicDHOTFFWaQQUk2GWQQgj66+KJLCAuEkkM1KPyTgRKwEkFDQT8Ssgogb2z/Y+FBxDhwqjoPpPKNCbkIQ0wGafmiQQbKDgNOOGa0wkVBxABhxiu/6PePPgsQ44cvDYRATCUwwKCfOTZowuUr2hSEJiEGNKzQL7HekIBAJuiTgQkmQP4PMcQ04Isww28ARCtOfEIQJbj6QMA/9oQQwj4h0NJA1ZcogkwJl+hjEy2gEMFNOO0OFIIICCwRz98G4UDGGjpQgjEmC/BigwYRaEDHP1D7AeI0wA8/YMQTYBhIMG7QCiCYQh8h8IUN/uGLHzRgGFUbAhMEMAENxARy2ihDl8RQEGZZQA0eSIgc1rCGAWTAHBqQWirg0AA0VO0fDTAHLXxhDnMgJxkOMFQz/wQiBjOsQQ5N00cuiKEPAO5jGD/4xyHewA4OUIUYyPuHJsTUBINYowYKUAMWiDQQWpAhC2QQA8uCpwFVhAATtQhDAk5ADDSYwwTEwFgb4AACHnBNIL3whAwYUBMN2MBxabmgJMzhDAEkYRo4hKAudBHCNZDhGAbx0MASYZBHsFBnpGvAMXTxB1X8wxJNuIEcfnACXVAlA20g2QOm0AoepCMEy4vIP0J3wTb4IWpiGMEv6lGHCjwiDuf4nbL20YsRHiQKPVPAb3ahiH78oxfME8xAMhCBCNCiHxsAgyd0cIqdweEHC9CACejRzCw04xg8MIP0nkYMXxyPFsMQAwNOAP+KXgwACL2QxA9oYQ5d9BAEptoBQlgACEDUwQpS4MIOxKAFMpDBG6GYRihCcYhDhIID45DDALQABBooSxf22ocrQ0CDK7SCEQQQEw3QEDoNoFQX+3CGKbThAB2Egwc3CAc69qEBlgnEFGf0QXKCoAcSjOILQuDCCwLwAT084Q5YfQI0nvCEC7SgBXUYRCccAA5anGAYwjCBOfZhgj56QhS34IYT6jGMXMDvH5LwwjjWQAQdlOEGIzCdBrZnwQTcIAtdQ4gY2DCIHjwVBGxoATX00IHKVlYAmLWFLQyxDHFswgGLyIYw9tGAoiJnBGTwxAogIVcaZKMBOTRHafcxhkf/gOBLoBhHPRACjMMm1iC5mEQavtDYTOzgBST4QDQEIYgCFOAIBagBdCEwjyfcowSd+MUZMOY4c9QkDKldARKukIVFNI1tCzDHMNAgCQakoR69EIMpTEELOtDBg4vzRQJkkAWlHiQDUmAAIxpRhkF8AbnUYEcH3KEMFOQgB/lwgxAo0QgwVKAKPWDAKcxx11/4URTEkIHIvKBWfXTzD8dYgJ3EcAsxAMMeSBhGA1a2AMYxggdZ0KZBQgCCMOwgD4sIgxGAIQNPTAGSsRjCJf6h5H+YggaMMMU4GJDPVt6xoCbYoidK4gBPONBpwijbH6higjEYwwsJiIkG/OAHE3gw/xf6eBcRRoOQB4AgEpHoxSQiQQ4tCFIbPczFAvSRxxAAo8fm0sYZIOHNDFQoA6cAQxZaEbsNtOIK9UCCTXRhA+SYAw1oEAgO/ODpwabNF6dogtKyeJBcgCMSmchEAq4hC0aYwQkbqJoulOg0YgADCA+QxC1MQQ+o2SCt+8gFA8rgCR7kcRhEMIMDgPG5JoZAGA04AcAWMIwIRPFzUjNHBpCK2IUQ4xqNAAEqTpABHOjAE01AAg0x5rs/nKEXTqNFoIQBZ5idYBF+/C0Amk2DM6RlAaPzA7blZoII4BRjnc5FMlawBm5QWyER4HMujnEGZkiiCUANA/LS+49g+CEZYP9gRghkjDxftOEfwvCFKYJI6YGcIdokEfQxctGACBDDJsTQgDAmmRbGSeDGWXAAQz4hBWsOJBeQkAEPHJAAL5yCHpLIhgY04QkAEMMERLWJbP9hhEW8W+kE2QHzAMCAJmpAfKTrdQOSXdB/SIABFaDf9BIi6DBM4iAAYB4XIJEBNDDDGZIYRxNGAAcsXi+PunCGFCrQile4oiCxAMOlfcCAP3AYgptu2e8AiIMEgIGF9lMIHhihhE3gwSBtKINIpHCKP+CQggKRWg5D8PJTSEHSWdidQSLAwCsAYAO1CN0/xJ4Lm2igDae4Ewv9q5AQMIMAe9jFQU6hg1YQAa4+/8f/OZbP81xEUQKmAIGkW/F3hKBheU6YwiZMYYkIIO8H10bCLUagBBlMn4we8QA6YERaUAJ7wAxNsw//AAeY0A3B1H9JIwUL0QADkAVmcAUVsAggAA6IQA5CwAg70AtlAC9EoFBRcQogYwY60ARyAAJCYAqoUA7lEAkrAAROcGkM4BAMcFitkCs3sCpAkCenQgQO4AWDoQtK8Aoh4wRkAARTUAEVkCdb4wSdAAsLwTYZkEcyNwDxFDKtYAa3JgMrYIRRYT25kAH8sABnIAo3sAat4AlwCIdmwAMA4AX+EAwLAIAEEQJnGDUDEQEbMAAOMIgrAAx59A9scxOCVgyzEAFoHeAK9sAKIyAjUFgBncAFDwAL9AALriALufAZAxEQADs='
WHERE image = 'julianax_r_02_yellow_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'mb_tires_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'pedal_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'racer_black_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'racer_red_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'racer02_yellow_f_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'roadster_black_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'roadster_red_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'roadster_yellow_f_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'saddle_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'shorts_female_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'shorts_male_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'silver_chain_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,R0lGODlhUAAyAPcAAF1bWtra2qKfmUxLSqWhm8LCwkRCQrSxq9LRzZqWkeLi4rGtqMrKytzc3Orq6ubm5tTU1O7u7nBtaSoqKoF9ea2qpIyLic7NyZGOiXRwa9/f39fX15WRi2BdW/f32H17ecPBvH15dJ2Zk/Ly8tbU0c7OzsC+uWRhXYWBe8vJxaGgoG1qZWlmYtvbWOjo6NHQ0Lm5uXl2cufnj7W2D+Tk5OLh3rGwsHRzcpaWDtrZ1dzdloqGgVlWVJ+fn5aWlpmZmNjX04WEg2xpaaqqqltZVsjGwk9NTDMyMt3c2v7++WZmZuXl4sbGxry8vNDOyuHh4bi4trS0tC8TK6+vr2hbF46KhaSkpLq3sTskO6mmodnZ2e3s6/n54ikGKZiUjlJQTYiEf1VMUDkdIr29u/X1zeHid767tbe3t8zNF5CMhrq6uvPy8dLS0ufm5Pv87FJRUT89Pa2sqI2IgqiknomIhVZUUePi30pIRra0r8XEwjo5OGteY/T08xoaGeDf3PHw7+no5jw6OvHxvEE/P2RjY1VSUP7//qOiouvq6O/u7EJBP/b19fb29WdkYDMbM8vMzPj4952bmHdzbiMhIpCQkOjn5NTTz5OSkaiop6akoEE6QUxHSVZUVP7+/O7t69za2Nva10MpIaysq6ampkdFRMTExLu6uK6trOvspj08Ozo5N2BgYDc2Nb+/v76+vvz8/Pr6+vv7++zs7P3+/u3t7ff39/Dw8Pb29vHx8fT09Pn5+fj4+PX19fz9/TIGMvn5+Pf39vz9/Pv7+u/v7+zr6fv6+vHx8PLx8PX19Pj39/399PPz8+rp6Jybm/39/FlQVPf4+KCclr6/v9/f2/f29j4yPvr7+/r6+XtzE7u4st3d3bu5tN7e3piWPKyrqF1VWPX08/f498bFxcfHxdfYgbOzs/3+/fP09LGvPnJvb0w2HtbW1dHR0c7Nzbi1r/r5+b29vcXDvpeWlZiTaHhtM8zLx7a1tH1yR+Pj4VVCG9HSn87PIM/QPv39/f7+/v///yH5BAAAAAAALAAAAABQADIAAAj/AFv9G0iwoMGDBv0pXOivn8N+ryLGigULlq5dtWrd4pVrGS5bw2jJcuDiAQ0FGrQF2ACBXQkGTAq4ghFlyhArPQQi3MnzH8OFDyFKpGgRo0aOHkGKJGkSpUqWLmHKpGkTp86eWAn+VBg04quJFS9m3NjxY8iRJU+mXNnyZcyZNW/mzFpQ4axe/YL164X37kOuD72CLToWqdmlaZ2yjfqWqtyrWRsKA8bnmLFja/gsAgbpF6xYr4L18iqYqNijZZWibboWqtupca3S9TcLHyEDihQVWrXKggUoedow8zRsBDhqyTzDsmatYlijZJOeZar2aVupcKvOxUp7zB0JIWJk/5CwohGPQncUBXoDgE4PKEsqEUtkbBkyapDC7YIGTWP0w6tVt9hr2T2W1SxjGLDDDihQEIIk45V3QgdE8PDFAIqkogopStCBSQp2CLfFMMaMsEwuuZyzzAgAUqeYa9g5JltP/uAzgBdeYFAFGA3GAOEKLDQyYYV1fGHEAKQMEggrRwDwQSRjTIPPA8zIQsswWEYQwUgutnZdY7Ftt1NDhFQxRzQicICBHDyGJwl5QZ4AQIWFGDnAHaTgpiGTTv4AAyh+TOmCA4Qy8wBr1jEGm3aQHeTPOoXgsUAWBESTAAdpsOmgeHBOOGcddQ5wZ56DwJGKHqwweUQQAECxgTYKHP96qIAwgsloT/34kIAJVxxQAaUiXFoFgw5CSJ6QFPJQ5JF33GGAAYOkMkEfExjRwwB66KFEO+to8wQ+NDzhpaIFzoiQP68QUkQK8Zjhjq9zCCBCjmz2+GOcydbJbJJ9wLGKAYGkc8QmSrzBSjkMrNOABgwnSqCMYjoqDCGfkOBEESCYIWkFlSbgRaZgbPomkEJ+qm8qfRCBRRdiqCNGF75IwckqE5zSSglacMNNAwPGGGajdelyBxI1gGJJPUWYsM0Bk3aMqRwNhhchC54SUccAfRjRBT36yNACGjPk44svnAwAgBVN4KwNz7UuauBOswBzxAcMVOJHDgjUEw+v8BL/MK+OxD4YIbJEZC0FOqgQRMbXVPjiiBITBGFFK2wEYHnb5UZs0CyLcHLIDW8IIU8RQDiRQsbuLFBBvH/XS4GPGZB8xyBS4JB4QW60MAPMbxwhAQZTMLDB5V+6ba6jnW/ATA1FYEDIG+moEA/GGqvuNMibRjiBAXsg1AkZaIjhywBNfqBCAZX3bOvb5zIiSgdvxHAKCXhn8gEnX9wggAnZME2ppZgKnHgmgIVuICQJHmhBKMZ3hGekQx5qeMHwMAcxoBFkFsloQxEIkI5SveEDcTDdNjgggQFwggKRgJe8cjSsqB2hdlwgSCf88Q9lkIEcvJtAGIRwCXuUYILFy5wF/wfiD1hsgQR4SIAi3gQAI+iBEHSoQMYygYJVKOIEFBAB6+jFoyN0AQdlIEgS3OAPG84jZjyYxA4vcYYfqs94mqtLMMCxhAtEgghV2FQMJACAAQyCBXTIAtM4kAFOKKIRYABgpibgCGzswwMDsSEXuKADLPiiGhPQhAN/EEEtvFGIPZlFMdZAgw9gIAsJwEAaqkCHkIVACEQwwABWQAcCxCsEehhEBrxwKT1oQgwz4AcXDKEMQciAHwuUghHU2IEPHKIAECAeuSpII3MIYw2cQIAJDuCNBXAzE2mqQtQa8QU4fEECaRgAIYyQCiJQoAMvFAMO0FAGQejjHlJw3ADU+P8MIVgAYcP7JDVp1A82CAEUp4vHBSyBgBS0Ag8VEEAqefSBG5xAVErIKABIEYg+aCKfXQiFFGDWhWoEgp97oIAKKGc5gf4sK/04hBVAcYF6WKIGiNgCM+wACgQUwQwHyEIkvFCFIHxgABlNakaPcARNYMERUK2GHiZxhDCEoQM3kIc9HqGFtbn0VgRNRx6AcAEnIIEYjLjGLxixBk9UQgNkjcc2FpCJBHBIqUklwgSOsNcJTGAQRNBEGL6RDgycYhzd2tlX2TemVwwAH5ZYqB2OEYtZWLYXsfgFMv6whTb4gawmoAMLeEAKUtDhAxI4gYXSs6RJBGIQm3gGC4KQBWj/aqNhiz3euYqxCj8g4AJAqAQ4gkFDn9DmK7qgjC2YMY0L2IADqWgFAq4gADnEwDwYYkXWBksIFJriBd4Sl8N8BlaezAICMUCCE5yQA0QAox8JaYhDXgGLWySiBvX4ASGmAYIscIACK+jAF0iBskJ0gBASQIE88HCBBoDrRUEcKE/6MQ4L5GC9SPDEL2YRX644wxnwPYMEJiCPCxxABGCQxAnqcAc4HEEPN7jBBywgAHvUIwDgolWEX4orJlj4AgjwwzBgweG6AKYTBeFFDPSQhjlgIAQrIIIRANaHDwTBAvLwhnS1QYNZQXiaPOZJL8RhgdJZwg5/EEZxtQKYgzCD/xSqSAAKMnAC9AxiEkSgBCWaIQpoPoFKXh7Xw8K8kzGX2QlnHkEs1kzENh8EABNAQQxYIGVF6GECPvDBD4bgCggoYFBdGu/6dHuQXrCDAqUjAT7WsOj4OoTRBLmBKjogAQGTAg59SIemD3GGdmigSoRKjKDJy1iE9AIcHdgAoifbaiNDBL4HucERGoHdQbAiFZnuwRSYEIAHWClAXx50eXfSD0ZwonQIqMEfigFrrnwFIaSYwAoAMGCUBUHTo2gCG/DhgAggBlG5jaNBegGMIGTCCQiYhifeUWQ2Q2QXsC6HHr6w4tlNogOaVgHCuNFvf4N72KMWeEFmAQkGpAMBTv8AhXv7wWh372IE0P7HOBRxhAyhihVKyHafN/CACGDp3zoG87h3O4xVmAC4S1jDK1ouX1jg4gEKeMIZgvADFTTjB5nWdNVFAY9908IWqgl1wIeolVcswxSEALIfNMxyNjckFreQBTdKUIAz2OAmh1CBCmSKCRu4ogQacIAtWiRsUcOR7ETsBzUQwUMnAKENy6is2x2ii1w4QAPreEQpXKEGKMAABmqARwES9gTBsyjshR/7gWDxhw18YQoIOCsjiNto+b6i8rR4gAYCsI51QKD3G9BCA/5MC1ysiPAApyChx9SPRSBiDKSYAglqkAhItJ0h861vLnARAUI5QBZWokXpBGxhIhRJB+jhJjapESJKY+ADCoRgbyWWIQwO/2S+FNFFRvZ/i/77nyOpMR2pp3xDx3zA4Ak1QAIIAAT4MAwbZlz3VxqmcRHQYRiol3w7VoCNtQjEUAOfgARL4ID2txVdMRTPURgBiH4gd3h0MRCzEAvIkAiAIB/LcA0jeH+BYYKEgRrn93GGB0oteFzJsCJ8AAnBcIPYl4NfYRoVmII+GHBT0ApSOIVUWIVSKA2u0ARaCA/SYIVU6ApgGIbwAA9aWIZaqAafBwNQcAZsaA/l8IY2YANTcAqiMASYgAlWkHc9cHVYdwmUEBAAOw=='
WHERE image = 'single_headlight_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'sprocket_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,R0lGODlhUAAyAPcAAPz8/C8CAj4CAr6+vp+fn87Ozq+vr7m5ufr6+rS0tKqqqqSkpMLCwsrKysbGxh8BAe/v7+3t7fb29vX19fT09E4DA/j4+PPz8/v7+/Hx8fn5+d3d3d/f39HR0fDw8Ozs7NTU1A8AANra2urq6tfX1+jo6Obm5uLi4uTk5B8fH14EBH9/fy8vLw8PDz8/P19fX29vb35+fi8REW0EBD4+Pr29vc/Pzx8QELu7u319fQ4ODk9PT83NzZ6enl5eXk5OTo6Ojq2trby8vO7u7m1tbS0PDw0NDaKioqenp66urri4uN7e3tvb2ywsLB0ODpycnCoqKm5ubszMzI2NjUpKSrOzs6urq4KCgmxsbLa2tjk5OY+Pj5KSktnZ2X0FBSkpKXR0dLCwsB0dHZOTk1paWpubm6GhocnJyVZWVsPDw3Nzc9jY2FdXV2BgYC0eHi4fH52dnSsrK3FxcT09PeDg4KysrDs7Oy4QEJiYmERERCcnJ1RUVJqami8gIFlZWXh4eFtbW0ZGRmlpaS0tLUxMTGNjY7q6upWVlSgoKLe3t7KysouLi9XV1SwdHYmJiXp6enZ2dtzc3MvLy8fHx5mZmYyMjDQ0NF1dXbW1taOjo5GRkcTExDY2NlxcXOvr6zw8PENDQ1hYWB4eHunp6aioqGtra/f397+/v/39/f7+/gAAAP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAABQADIAAAj/AE+tGkiwoMGDBlMpXJgKlUNUACJiwIAAgQYLpkxJmEDhQgYPECJ8GFHCBIoTHDaIIAGiQ4EGDhgMOJDAgIIFBAQi3MlzFcOFDyFKpGgRo0aOHkGKJGkSpUqWLmHKpGkTp86eWAn+VBg0IoCJFS9m3NjxY8iRJU+mXNnyZcyZNW/mzErX59auQ8MaJZv0LFO1T9tKhVt1bl2sWxs+9Aq26FikZpemdco26luqcq8e3pkY71eiYo+WVYq26VqobqfGtbq5Z+fFeR2L7ivZdGDLqgtrbp3wLuzPeh+P9jv5tODLqw3zPvjaIWPQeyGT/ksZ9WDMrJdDMADDRQpVqlq4/3gBZIli57FD841cGnDl1IQz8z71QtWDAPfB3w8QQBWLHr81pp50xNn23nXJ7YYVBy7Y90AKMBggUCoFDLACCw8I8GANQgHgyRNE0PCdKqLMMQd4qnxCBSSnUGccbvFlRxcBLTzwwAs29LbQEivIIEAIPnxQgw+qhJBfkQEYiaKN+IlxxRruWYecbnW9EEIALOTI3FYR7IBfCkY+wAINquB3RyeUPDJIAD+qQsUd/OnwRHXH5SZfVlYG8AJPr0XxQAUh/MCED0a+UYZwIJAR5ylcNKLhHh3cBh92yvG0wpV78nlXD0hiiWEIRIwSXVkJuCGAKlx0ocZ9X9hw4JR38v90iioCZKrpTz0Y6QMQ+KlygxWyrecBHU3MEIImJsBRRABf8CClnTLulAKWWW1VgH0+QMRCBao8EdxskdlRgQ44oKDEsnk8G2OlB10aAgfVMjRECgKw4FAQRgpAw7fChrRBExXEcdIi+P1R57oKFtSCnnT9dKkMG6ASwcIsnIpDsASKNAB+cqDUhgpGTAIjpQkPRICR8Mar0BA1xuBQDCHc8EEKFVyC8XBLgaGCDiBwYIMTAQgycoI87SDADnUxBMQDN0TgEL0xADBFBS3cTNtIXRTxwBQpEVGBEUNTudPCWyS9EAsBwOAQD/ZFAoAU3OIwIM5ooaFCICnxgN8WkxL/jRAHZWqp8hBlFvByAC5I5GMlc19NUg/crsWJAID0LfZBswpw2EIDhCCDYi4EEPVXNFSQQ+PsMfUjEiphUYEllsdqkAGqyLC5QisI4IJi0wYhEQ0z/ID6dCVBIUAOKh1xauzRFrSCCy7cnsoKiCtGaw0S5aDv8AVqIQAMyc+gCvPsEkSj7WZPr8oK1guAPekz0MB9bd6DL8IRXoyP4OUGZS499btzyPV+p4LTjcpxJalf8vJHvpLZIHDpy10AUdEC9ynuePMrjfGQd7/l7U92BqEVAdKXhAd8ziGhGx0TACW3A6auJBpinQiwoAI9NLBoFUBawxSyBFoZDhVRQFxE/6YgPqu9sAcqUEWkRACKCvzghjshwH0gsEOF0EttqMBXAD4AgBSo4AdGJB4aKgCFvPHnClBECAQquIIqTi8AfXhIBWNQA0ABK4MjyJoAYtA1kG0ijQhZgQlT5pod0QoIh7uBF1PAr4yNBAwz4JnPnJDDsIHQIGusQPQQw5AXBKBpEluYserQSLrxoAgC6BgHPqaKA1iyeQc5WQXaWMiFsEyTDgmiAH4AHeFcrVg6YMQJkMCfUhyMZHjizwhvtZAkhEAAPuCBDFQQM0mUkjahoGYdzOUEFSBCXcjECgQw9D1mLgQGRgqAClowrRtcbHh08EMFHnAFExzACTMwwinA6f83caJNk4QsSGIiQC9uBUEK9AqAAX2ZgTQUKwRsKIEaAvC1KrwKWuXjCTrn+YKA2sWWK7iBCvqjoRgwAUMVSMGhRJModYZgDGaIQwUCAIU0SOqDsOyJAVKQoXqt4BRUVMgAgLCDB6iAajHgwT8D8IPvCEAAb8CCEhxBCHUKQAd2cEMFqFmInt0UVjnFCgHAVIGtPvWpRx1pC8DnHDjwVABlPVVZK3DWp85VFWw4Q5SO2c/W2KA7KEIRC16QhPN0SAohCqxiwSMGKoyBCcX5KkZL1hoOFMA36AGORc6wBtFk4QTEMxA/+bccrWC2QwJyYWj3+sqMLqc5qO0luFZLp9ZdUrY1sH3ONV8oWr6StrQfZYhnUstQ2r6IfBI6hXKXy9zmOve5zR2AdKdbgxoI4brXxQEODHGA7iohEVnIAiaqUAVFhCEMSQiCFRRACiQsIBNm6MET+ICHQ3BhCwEBADs='
WHERE image = 'street_tires_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'superlight_black_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'superlight_red_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'superlight_silver_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'tail_lights_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'tirepatch_kit_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'water_bottle_cage_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'water_bottle_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,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'
WHERE image = 'wheel_small.gif';
UPDATE product
SET
  image = 'data:image/gif;base64,R0lGODlhUAAxAPcAAAAAAIAAAACAAICAAAAAgIAAgACAgICAgMDAwP8AAAD/AP//AAAA//8A/wD//////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMwAAZgAAmQAAzAAA/wAzAAAzMwAzZgAzmQAzzAAz/wBmAABmMwBmZgBmmQBmzABm/wCZAACZMwCZZgCZmQCZzACZ/wDMAADMMwDMZgDMmQDMzADM/wD/AAD/MwD/ZgD/mQD/zAD//zMAADMAMzMAZjMAmTMAzDMA/zMzADMzMzMzZjMzmTMzzDMz/zNmADNmMzNmZjNmmTNmzDNm/zOZADOZMzOZZjOZmTOZzDOZ/zPMADPMMzPMZjPMmTPMzDPM/zP/ADP/MzP/ZjP/mTP/zDP//2YAAGYAM2YAZmYAmWYAzGYA/2YzAGYzM2YzZmYzmWYzzGYz/2ZmAGZmM2ZmZmZmmWZmzGZm/2aZAGaZM2aZZmaZmWaZzGaZ/2bMAGbMM2bMZmbMmWbMzGbM/2b/AGb/M2b/Zmb/mWb/zGb//5kAAJkAM5kAZpkAmZkAzJkA/5kzAJkzM5kzZpkzmZkzzJkz/5lmAJlmM5lmZplmmZlmzJlm/5mZAJmZM5mZZpmZmZmZzJmZ/5nMAJnMM5nMZpnMmZnMzJnM/5n/AJn/M5n/Zpn/mZn/zJn//8wAAMwAM8wAZswAmcwAzMwA/8wzAMwzM8wzZswzmcwzzMwz/8xmAMxmM8xmZsxmmcxmzMxm/8yZAMyZM8yZZsyZmcyZzMyZ/8zMAMzMM8zMZszMmczMzMzM/8z/AMz/M8z/Zsz/mcz/zMz///8AAP8AM/8AZv8Amf8AzP8A//8zAP8zM/8zZv8zmf8zzP8z//9mAP9mM/9mZv9mmf9mzP9m//+ZAP+ZM/+ZZv+Zmf+ZzP+Z///MAP/MM//MZv/Mmf/MzP/M////AP//M///Zv//mf//zP///yH5BAEAABAALAAAAABQADEAAAj/AP8JHEiwoMGDCBMqXMiwocOHECNKnEixosWLGDNq3Mixo8ePIEOKHEmypMmTKFOqXJkRBYqBLhfGZPnQ5ct/MxPmpMnQpsCZNm/CfBnTZ86gQ3HeRMoRadGlQpUqJfoUZ9KnVH9GxVhUKtCoVaWKnZrVK9SmVMPuVHvWrFisPjd+LbuW7tmvb8t6nJuXIFutfbH2lSt07ta/eeOy3clTYuGtjS8yjUy5suXLmDHHdRjWIGPGIjdDBA3YL2SQVY+mvQsVL16yqLOqfuyWtlHZbTv+nY176G67H38DTs068GrSkoMSN+62+fKQqrW2Xe6aem7CSaf6fq7ceevTmcOLEh9Pvrz58+jTq1/Pvr379+8DAgA7'
WHERE image = 'no_image_available_small.gif';


INSERT INTO product_category_list (product_id, category_list_id) VALUES ('1', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('1', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('2', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('2', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('3', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('3', '35');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('4', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('4', '35');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('5', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('5', '27');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('6', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('6', '27');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('7', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('7', '35');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('8', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('8', '23');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('9', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('9', '25');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('10', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('10', '25');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('11', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('11', '25');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('12', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('12', '25');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('13', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('13', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('14', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('14', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('15', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('15', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('16', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('16', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('17', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('17', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('18', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('18', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('19', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('19', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('20', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('20', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('21', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('21', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('22', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('22', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('23', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('23', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('24', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('24', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('25', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('25', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('26', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('26', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('27', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('27', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('28', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('28', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('29', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('29', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('30', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('30', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('31', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('31', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('32', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('32', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('33', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('33', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('34', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('34', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('35', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('35', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('36', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('36', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('37', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('37', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('38', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('38', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('39', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('39', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('40', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('40', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('41', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('41', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('42', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('42', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('43', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('43', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('44', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('44', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('45', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('45', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('46', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('46', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('47', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('47', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('48', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('48', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('49', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('49', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('50', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('50', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('51', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('51', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('52', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('52', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('53', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('53', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('54', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('54', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('55', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('55', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('56', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('56', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('57', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('57', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('58', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('58', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('59', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('59', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('60', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('60', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('61', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('61', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('62', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('62', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('63', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('63', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('64', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('64', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('65', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('65', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('66', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('66', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('67', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('67', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('68', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('68', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('69', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('69', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('70', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('70', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('71', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('71', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('72', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('72', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('73', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('73', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('74', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('74', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('75', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('75', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('76', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('76', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('77', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('77', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('78', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('78', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('79', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('79', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('80', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('80', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('81', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('81', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('82', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('82', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('83', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('83', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('84', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('84', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('85', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('85', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('86', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('86', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('87', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('87', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('88', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('88', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('89', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('89', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('90', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('90', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('91', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('91', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('92', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('92', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('93', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('93', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('94', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('94', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('95', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('95', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('96', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('96', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('97', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('97', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('98', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('98', '14');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('99', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('99', '14');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('100', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('100', '14');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('101', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('101', '15');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('102', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('102', '15');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('103', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('103', '15');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('104', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('104', '8');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('105', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('105', '8');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('106', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('106', '8');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('107', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('107', '8');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('108', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('108', '8');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('109', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('109', '8');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('110', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('110', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('111', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('111', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('112', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('112', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('113', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('113', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('114', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('114', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('115', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('115', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('116', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('116', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('117', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('117', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('118', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('118', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('119', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('119', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('120', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('120', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('121', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('121', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('122', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('122', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('123', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('123', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('124', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('124', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('125', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('125', '21');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('126', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('126', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('127', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('127', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('128', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('128', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('129', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('129', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('130', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('130', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('131', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('131', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('132', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('132', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('133', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('133', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('134', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('134', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('135', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('135', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('136', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('136', '18');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('137', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('137', '26');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('138', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('138', '39');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('139', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('139', '38');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('140', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('140', '40');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('141', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('141', '40');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('142', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('142', '37');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('143', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('143', '37');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('144', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('144', '37');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('145', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('145', '26');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('146', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('146', '26');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('147', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('147', '26');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('148', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('148', '28');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('149', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('149', '28');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('150', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('150', '28');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('151', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('151', '22');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('152', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('152', '22');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('153', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('153', '22');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('154', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('154', '24');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('155', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('155', '24');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('156', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('156', '24');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('157', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('157', '24');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('158', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('158', '24');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('159', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('159', '24');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('160', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('160', '29');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('161', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('161', '29');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('162', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('162', '29');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('163', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('163', '26');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('164', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('164', '26');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('165', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('165', '26');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('166', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('166', '32');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('167', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('167', '32');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('168', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('168', '32');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('169', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('169', '41');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('170', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('170', '27');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('171', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('171', '27');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('172', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('172', '30');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('173', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('173', '33');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('174', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('174', '34');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('175', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('175', '31');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('176', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('176', '36');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('177', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('177', '25');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('178', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('178', '25');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('179', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('179', '25');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('180', '3');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('180', '25');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('181', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('181', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('182', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('182', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('183', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('183', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('184', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('184', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('185', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('185', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('186', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('186', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('187', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('187', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('188', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('188', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('189', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('189', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('190', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('190', '13');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('191', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('191', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('192', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('192', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('193', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('193', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('194', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('194', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('195', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('195', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('196', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('196', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('197', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('197', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('198', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('198', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('199', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('199', '20');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('200', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('200', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('201', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('201', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('202', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('202', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('203', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('203', '19');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('204', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('204', '19');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('205', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('205', '19');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('206', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('206', '19');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('207', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('207', '19');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('208', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('208', '19');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('209', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('209', '19');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('210', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('210', '19');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('211', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('211', '19');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('212', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('212', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('213', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('213', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('214', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('214', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('215', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('215', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('216', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('216', '41');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('217', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('217', '41');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('218', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('218', '41');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('219', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('219', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('220', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('220', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('221', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('221', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('222', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('222', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('223', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('223', '41');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('224', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('224', '41');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('225', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('225', '41');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('226', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('226', '41');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('227', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('227', '41');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('228', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('228', '41');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('229', '4');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('229', '41');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('230', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('230', '17');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('231', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('231', '17');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('232', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('232', '17');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('233', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('233', '17');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('234', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('234', '17');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('235', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('235', '17');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('236', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('236', '17');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('237', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('237', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('238', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('238', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('239', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('239', '16');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('240', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('240', '13');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('241', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('241', '8');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('242', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('242', '8');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('243', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('243', '10');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('244', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('244', '12');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('245', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('245', '12');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('246', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('246', '12');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('247', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('247', '11');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('248', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('248', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('249', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('249', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('250', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('250', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('251', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('251', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('252', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('252', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('253', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('253', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('254', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('254', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('255', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('255', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('256', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('256', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('257', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('257', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('258', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('258', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('259', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('259', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('260', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('260', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('261', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('261', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('262', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('262', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('263', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('263', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('264', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('264', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('265', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('265', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('266', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('266', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('267', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('267', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('268', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('268', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('269', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('269', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('270', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('270', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('271', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('271', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('272', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('272', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('273', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('273', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('274', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('274', '7');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('275', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('275', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('276', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('276', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('277', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('277', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('278', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('278', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('279', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('279', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('280', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('280', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('281', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('281', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('282', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('282', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('283', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('283', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('284', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('284', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('285', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('285', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('286', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('286', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('287', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('287', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('288', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('288', '5');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('289', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('289', '9');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('290', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('290', '9');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('291', '2');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('291', '9');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('292', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('292', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('293', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('293', '6');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('294', '1');
INSERT INTO product_category_list (product_id, category_list_id) VALUES ('294', '6');