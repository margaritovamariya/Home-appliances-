CREATE TABLE DEVICE(
    id INT NOT NULL PRIMARY KEY,
    category VARCHAR(40) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(20) NOT NULL,
    client_name VARCHAR(40) NOT NULL,
    year DATE,
    category_name VARCHAR(40) NOT NULL,
    FOREIGN KEY (category_name) REFERENCES CATEGORIES(name)
);

CREATE TABLE TECHNICIAN(
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  egn CHAR(10) NOT NULL,
  devices_category VARCHAR(40) NOT NULL
);

CREATE TABLE CATEGORIES(
  name VARCHAR(40) NOT NULL PRIMARY KEY,
  model VARCHAR(20) NOT NULL,
  manufacturer_name VARCHAR(50) NOT NULL,
  year DATE
);

CREATE TABLE REPRAIRS(
    id_device INT NOT NULL,
    id_technician INT NOT NULL,
    date DATE NOT NULL,
    price DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id_device,id_technician),
    FOREIGN KEY (id_device) REFERENCES DEVICE(id),
    FOREIGN KEY (id_technician) REFERENCES TECHNICIAN(id)
);

CREATE TABLE QUALIFIED(
    id_technician INT NOT NULL,
    category_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (id_technician,category_name),
    FOREIGN KEY (id_technician) REFERENCES TECHNICIAN(id),
    FOREIGN KEY (category_name) REFERENCES CATEGORIES(name)
);