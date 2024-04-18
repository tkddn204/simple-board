CREATE TABLE POST(
    ID VARCHAR(16) NOT NULL PRIMARY KEY,
    TITLE VARCHAR(30),
    CONTENT VARCHAR(300),
    NAME VARCHAR(20),
    created_at DATE,
    updated_at DATE
);
CREATE TABLE IDS(
    TABLE_NAME VARCHAR(16) NOT NULL PRIMARY KEY,
    NEXT_ID DECIMAL(30) NOT NULL
);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00001', 'Santa Fe', 'Proin at turpis a pede posuere nonummy.', 'Marilin', '2024-04-03', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00002', '3000GT', 'Mauris sit amet eros.', 'Morena', '2024-04-03', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00003', 'Mirage', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Hardy', '2024-04-12', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00004', 'Astro', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 'Linn', '2024-04-12', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00005', 'Stratus', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 'Carole', '2024-04-05', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00006', 'Eurovan', 'Duis ac nibh.', 'Del', '2024-04-08', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00007', 'X3', 'Proin eu mi. Nulla ac enim.', 'Kristoffer', '2024-04-02', '2023-08-08');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00008', 'Alpina B7', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Grenville', '2024-04-11', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00009', 'Diamante', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'Miranda', '2024-04-14', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00010', 'Paseo', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 'Teddy', '2024-04-02', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00011', 'Rodeo Sport', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 'Roslyn', '2024-04-09', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00012', 'C70', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Estella', '2024-04-16', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00013', 'F150', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 'Dannel', '2024-04-15', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00014', 'Liberty', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Erl', '2024-04-09', '2023-06-03');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00015', 'Sequoia', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 'Agnola', '2024-04-02', '2023-08-10');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00016', 'Navigator', 'Proin eu mi.', 'Merla', '2024-04-11', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00017', 'Tacoma Xtra', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 'Antonin', '2024-04-16', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00018', 'Pajero', 'In quis justo.', 'Davy', '2024-04-05', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00019', 'Land Cruiser', 'Etiam faucibus cursus urna. Ut tellus.', 'Elvina', '2024-04-05', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00020', 'S8', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Pascal', '2024-04-12', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00021', 'Riviera', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Neall', '2024-04-11', '2023-09-03');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00022', 'A8', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Karlik', '2024-04-14', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00023', 'Mazda5', 'Etiam faucibus cursus urna. Ut tellus.', 'Ida', '2024-04-12', '2023-05-16');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00024', 'GS', 'Donec semper sapien a libero. Nam dui.', 'Donelle', '2024-04-11', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00025', 'Prizm', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 'Lavina', '2024-04-11', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00026', '928', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 'Elisabeth', '2024-04-12', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00027', 'FJ Cruiser', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 'Danny', '2024-04-10', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00028', 'Vandura 2500', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 'Jae', '2024-04-02', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00029', 'E-Series', 'Pellentesque eget nunc.', 'Ingemar', '2024-04-11', '2023-04-28');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00030', 'CX', 'Cras pellentesque volutpat dui.', 'Willi', '2024-04-12', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00031', 'Cavalier', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 'Hercules', '2024-04-11', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00032', 'Range Rover', 'Phasellus in felis.', 'Norrie', '2024-04-16', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00033', 'Azera', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Idaline', '2024-04-09', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00034', 'Explorer', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.', 'Stirling', '2024-04-01', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00035', 'Familia', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 'Izabel', '2024-04-04', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00036', 'VehiCROSS', 'Etiam faucibus cursus urna. Ut tellus.', 'Stanwood', '2024-04-09', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00037', 'Golf', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Allx', '2024-04-04', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00038', 'QX56', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 'Camel', '2024-04-01', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00039', 'Bravada', 'Integer ac leo. Pellentesque ultrices mattis odio.', 'Hildegarde', '2024-04-10', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00040', '2500', 'Donec dapibus.', 'Duncan', '2024-04-13', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00041', 'Passport', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 'Davida', '2024-04-02', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00042', 'Maxima', 'Nulla ut erat id mauris vulputate elementum.', 'Travers', '2024-04-15', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00043', 'Reatta', 'Vivamus tortor.', 'Tammy', '2024-04-06', '2024-03-26');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00044', 'rio', 'Aliquam erat volutpat. In congue.', 'Clemence', '2024-04-05', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00045', 'Thunderbird', 'Donec ut mauris eget massa tempor convallis.', 'Micheal', '2024-04-05', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00046', 'Tredia', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', 'Julia', '2024-04-11', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00047', 'RL', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 'Binnie', '2024-04-12', '2023-06-11');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00048', 'Savana 1500', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Andrus', '2024-04-04', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00049', 'E-Series', 'Vivamus in felis eu sapien cursus vestibulum.', 'Gibby', '2024-04-15', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00050', 'Escalade', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 'Jodie', '2024-04-08', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00051', 'Nubira', 'In hac habitasse platea dictumst.', 'Ginger', '2024-04-16', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00052', 'Acclaim', 'Donec dapibus. Duis at velit eu est congue elementum.', 'Stillmann', '2024-04-16', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00053', 'M6', 'Quisque id justo sit amet sapien dignissim vestibulum.', 'Renault', '2024-04-09', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00054', 'GS', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 'Allyson', '2024-04-03', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00055', 'Boxster', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Elnar', '2024-04-03', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00056', 'Taurus', 'Nunc purus.', 'Harry', '2024-04-15', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00057', 'Wrangler', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 'Royal', '2024-04-03', '2023-09-11');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00058', '9-7X', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 'Correna', '2024-04-04', '2023-08-14');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00059', 'Odyssey', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 'Horten', '2024-04-02', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00060', 'SLS-Class', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Marlee', '2024-04-02', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00061', 'Virage', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 'Lorri', '2024-04-11', '2024-03-29');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00062', 'Dakota Club', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', 'Sonja', '2024-04-09', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00063', 'LTD', 'Etiam pretium iaculis justo.', 'Darline', '2024-04-15', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00064', 'Sierra 2500', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Giselle', '2024-04-16', '2023-08-22');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00065', 'Passat', 'Donec quis orci eget orci vehicula condimentum.', 'Vitoria', '2024-04-08', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00066', 'GX', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', 'Waylon', '2024-04-01', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00067', 'Yukon XL 1500', 'Praesent id massa id nisl venenatis lacinia.', 'Annecorinne', '2024-04-09', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00068', '7 Series', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Brodie', '2024-04-12', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00069', 'Insight', 'Nullam molestie nibh in lectus. Pellentesque at nulla.', 'Coretta', '2024-04-05', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00070', 'Shadow', 'Mauris ullamcorper purus sit amet nulla.', 'Christalle', '2024-04-09', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00071', 'Starion', 'Proin at turpis a pede posuere nonummy. Integer non velit.', 'Buddie', '2024-04-02', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00072', '9-3', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Stacie', '2024-04-08', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00073', 'Explorer', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 'Melosa', '2024-04-12', '2023-11-24');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00074', 'Ram 1500', 'Nulla tellus. In sagittis dui vel nisl.', 'Kennan', '2024-04-07', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00075', 'Excursion', 'Nulla justo.', 'Edna', '2024-04-12', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00076', 'Park Avenue', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Rudiger', '2024-04-14', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00077', '9-3', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 'Humfrid', '2024-04-15', '2024-02-17');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00078', 'Avalanche 2500', 'Integer a nibh. In quis justo.', 'Giacopo', '2024-04-12', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00079', 'Omni', 'Pellentesque at nulla. Suspendisse potenti.', 'Trenton', '2024-04-02', '2023-07-03');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00080', 'Q', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Loralyn', '2024-04-16', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00081', 'Galant', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Sammy', '2024-04-15', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00082', 'Town Car', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 'Anny', '2024-04-06', '2023-11-19');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00083', 'S4', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.', 'Chucho', '2024-04-01', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00084', '626', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 'Madeleine', '2024-04-13', '2023-06-29');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00085', 'RL', 'Nulla mollis molestie lorem. Quisque ut erat.', 'Victor', '2024-04-05', '2023-08-29');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00086', '599 GTB Fiorano', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Ruttger', '2024-04-07', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00087', 'V90', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Celinda', '2024-04-07', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00088', '3 Series', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 'Brear', '2024-04-10', '2023-07-28');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00089', '207', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 'Otho', '2024-04-05', '2024-04-02');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00090', 'Tundra', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Jermayne', '2024-04-09', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00091', 'LX', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Tally', '2024-04-03', '2023-08-26');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00092', 'Legacy', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 'Rana', '2024-04-06', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00093', 'Camaro', 'Nunc rhoncus dui vel sem.', 'Danie', '2024-04-03', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00094', 'Yukon', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 'Ole', '2024-04-13', '2023-09-04');
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00095', 'Tempo', 'Nulla nisl. Nunc nisl.', 'Stacia', '2024-04-01', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00096', 'G-Series 3500', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'Fedora', '2024-04-15', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00097', 'Veracruz', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Brandais', '2024-04-14', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00098', 'Prelude', 'Curabitur convallis.', 'Timoteo', '2024-04-04', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00099', 'Taurus', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Feliza', '2024-04-10', null);
insert into POST (id, title, content, name, created_at, updated_at) values ('POST-00100', 'SSR', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 'Ivett', '2024-04-12', null);
INSERT INTO IDS VALUES('POST',101)
