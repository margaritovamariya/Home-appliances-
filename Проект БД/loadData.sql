insert into FN1MI0700004.CATEGORIES (NAME, MODEL, MANUFACTURER_NAME, YEAR)
values  ('Washing machines', 'Samsung', 'Samsung WF45K6500AV ', '2018-05-11'),
        ('Dishwashers', 'LG', 'LG LDF5545ST dishwas', '2021-08-20'),
        ('Water heaters', 'Bosch', 'Bosch ES4 water heat', '2021-06-22'),
        ('Refrigerators', 'Whirlpool', 'Whirlpool WRX735SDHZ', '2020-07-25'),
        ('Ovens', 'GE', 'GE JB645RKSS oven', '2019-06-07'),
        ('Cooktops', 'Maytag', 'Maytag MGC7536DS coo', '2020-08-09'),
        ('Microwave ovens', 'Electrolux', 'Electrolux E30MO65GS', '2018-06-04'),
        ('Air conditioners', 'Kenmore', 'Kenmore 81414 air co', '2020-10-08'),
        ('Vacuum cleaners', 'KitchenAid', 'KitchenAid KVWB606DS', '2021-01-17'),
        ('Dryers', 'Frigidaire', 'Frigidaire FFRE0633U', '2022-06-12');

insert into FN1MI0700004.DEVICE (ID, CATEGORY, MANUFACTURER, MODEL, CLIENT_NAME, YEAR, CATEGORY_NAME)
values  (1, 'Washing machines', 'Samsung', 'Samsung WF45K6500AV ', 'Maria Margaritova', '2018-05-11', 'Washing machines'),
        (2, 'Dishwashers', 'LG', 'LG LDF5545ST dishwas', 'Maya Deneva', '2021-08-20', 'Dishwashers'),
        (3, 'Water heaters', 'Bosch', 'Bosch ES4 water heat', 'Steliana Dimitrova', '2021-06-22', 'Water heaters'),
        (4, 'Refrigerators', 'Whirlpool', 'Whirlpool WRX735SDHZ', 'Elena Kaptieva', '2020-07-25', 'Refrigerators'),
        (5, 'Ovens', 'GE', 'GE JB645RKSS oven', 'Dimitar Yordanov', '2019-06-07', 'Ovens'),
        (6, 'Cooktops', 'Maytag', 'Maytag MGC7536DS coo', 'Radoslav Radkov', '2020-08-09', 'Cooktops'),
        (7, 'Microwave ovens', 'Electrolux', 'Electrolux E30MO65GS', 'Maria Ilieva', '2018-06-04', 'Microwave ovens'),
        (8, 'Air conditioners', 'Kenmore', 'Kenmore 81414 air co', 'Antonio Stefananov', '2020-10-08', 'Air conditioners'),
        (9, 'Vacuum cleaners', 'KitchenAid', 'KitchenAid KVWB606DS', 'Viktor Stoyanov', '2021-01-17', 'Vacuum cleaners'),
        (10, 'Dryers', 'Frigidaire', 'Frigidaire FFRE0633U', 'Vanian Karnolski', '2022-06-12', 'Dryers');

insert into FN1MI0700004.QUALIFIED (ID_TECHNICIAN, CATEGORY_NAME)
values  (11, 'Air conditioners'),
        (12, 'Cooktops'),
        (13, 'Dishwashers'),
        (14, 'Dryers'),
        (15, 'Microwave ovens'),
        (16, 'Ovens'),
        (17, 'Refrigerators'),
        (18, 'Vacuum cleaners'),
        (19, 'Washing machines'),
        (20, 'Water heaters');


insert into FN1MI0700004.REPRAIRS (ID_DEVICE, ID_TECHNICIAN, DATE, PRICE)
values  (1, 11, '2018-05-11', 50.00),
        (2, 12, '2021-08-20', 70.00),
        (3, 13, '2021-06-22', 80.00),
        (4, 14, '2020-07-25', 100.00),
        (5, 15, '2019-06-07', 30.00),
        (6, 16, '2020-08-09', 55.00),
        (7, 17, '2018-06-04', 89.00),
        (8, 18, '2020-10-08', 78.00),
        (9, 19, '2021-01-17', 20.00),
        (10, 20, '2022-06-12', 69.00);

insert into FN1MI0700004.TECHNICIAN (ID, NAME, EGN, DEVICES_CATEGORY)
values  (11, 'John Smith', '9205023001', 'Washing machines'),
        (12, 'Emily Brown', '9003124502', 'Dishwashers'),
        (13, 'William Davis', '8809193003', 'Water heaters'),
        (14, 'Sophia Johnson', '9507125504', 'Refrigerators'),
        (15, 'Ethan Wilson', '9101237505', 'Ovens'),
        (16, 'Olivia Thomas', '9408205006', 'Cooktops'),
        (17, 'Michael Lee', '9606113007', 'Microwave ovens'),
        (18, 'Emma Clark', '9805251508', 'Air conditioners'),
        (19, 'David Baker', '9303118009', 'Vacuum cleaners'),
        (20, 'Ava Jones', '9907144000', 'Dryers');