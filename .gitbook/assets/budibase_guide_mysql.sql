CREATE TABLE `sys`.`Vehicles` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `Registration` LONGTEXT NULL,
  `Make` LONGTEXT NULL,
  `Model` LONGTEXT NULL,
  `Colour` LONGTEXT NULL,
  `Year` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  

CREATE TABLE `sys`.`ServiceLog` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `Description` LONGTEXT NULL,
  `VehicleId` INT NULL,
  `ServiceDate` DATETIME NULL,
  `Category` LONGTEXT NULL,
  `Mileage` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);


INSERT INTO public."Vehicles"("Registration", "Make", "Model", "Colour", "Year")
VALUES ('FAZ 9837','Volkswagen','Polo','White',2002);
INSERT INTO public."Vehicles"("Registration", "Make", "Model", "Colour", "Year")
VALUES ('JHI 8827','BMW','M3','Black',2013);
INSERT INTO public."Vehicles"("Registration", "Make", "Model", "Colour", "Year")
VALUES ('D903PI','Volvo','XC40','Grey',2014);
INSERT INTO public."Vehicles"("Registration", "Make", "Model", "Colour", "Year")
VALUES ('YFI002','Volkswagen','Golf','Dark Blue',2018);
INSERT INTO public."Vehicles"("Registration", "Make", "Model", "Colour", "Year")
VALUES ('HGT5677','Skoda','Octavia','Graphite',2009);
INSERT INTO public."Vehicles"("Registration", "Make", "Model", "Colour", "Year")
VALUES ('PPF9276','Skoda','Octavia','Graphite',2021);
INSERT INTO public."Vehicles"("Registration", "Make", "Model", "Colour", "Year")
VALUES ('J893FT','Toyota','Corolla','Red',2015);
INSERT INTO public."Vehicles"("Registration", "Make", "Model", "Colour", "Year")
VALUES ('MJK776','Honda','HR-V','Silver',2015);


INSERT INTO public."ServiceLog"("Description", "VehicleId", "ServiceDate", "Category", "Mileage")
VALUES ('Change front brakes', 1, '2021-05-04', 'Brakes', 20667);
INSERT INTO public."ServiceLog"("Description", "VehicleId", "ServiceDate", "Category", "Mileage")
VALUES ('Tyres - full set', 1, '2021-05-04', 'Tyres', 20667);
INSERT INTO public."ServiceLog"("Description", "VehicleId", "ServiceDate", "Category", "Mileage")
VALUES ('Engine tune up', 2, '2021-07-14', 'Engine', 50889);
INSERT INTO public."ServiceLog"("Description", "VehicleId", "ServiceDate", "Category", "Mileage")
VALUES ('Replace transmission', 3, '2021-09-26', 'Transmission', 98002);
