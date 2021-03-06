USE [ClinicManagement]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [RoleName], [Description]) VALUES (1, N'employee', N'this is employee')
INSERT [dbo].[Role] ([Id], [RoleName], [Description]) VALUES (2, N'employee2', N'this is employee2')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [RoleId], [Name], [Username], [Password], [Email], [Phone], [Address], [CreatedDate], [State]) VALUES (1, 1, N'hieu', N'hieu', N'123', N'hieun@gmail.com', N'0123456789', N'da nang', CAST(N'2020-02-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Employee] ([Id], [RoleId], [Name], [Username], [Password], [Email], [Phone], [Address], [CreatedDate], [State]) VALUES (2, 1, N'nguyen ', N'nguyen ', N'123', N'nguyen@gmail.com', N'0123443534', N'da nang', CAST(N'2020-02-02T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [CategoryName], [CreatedDate], [UpdateDate], [Description]) VALUES (1, N'Medicine', CAST(N'2020-01-06T00:00:00.000' AS DateTime), CAST(N'2020-02-06T00:00:00.000' AS DateTime), N'Thuoc')
INSERT [dbo].[Category] ([Id], [CategoryName], [CreatedDate], [UpdateDate], [Description]) VALUES (2, N'Medical Equipment', CAST(N'2020-01-06T00:00:00.000' AS DateTime), CAST(N'2020-01-06T00:00:00.000' AS DateTime), N'Thiet bi y te')
INSERT [dbo].[Category] ([Id], [CategoryName], [CreatedDate], [UpdateDate], [Description]) VALUES (3, N'Functional Foods', CAST(N'2020-01-06T00:00:00.000' AS DateTime), CAST(N'2020-01-06T00:00:00.000' AS DateTime), N'Thuc pham chuc nang')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (5, 1, N'Vitamin H Biotin 5mg', CAST(60000 AS Decimal(18, 0)), CAST(75000 AS Decimal(18, 0)), 20000, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (7, 1, N'Cataflam 25', CAST(100000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (8, 1, N'Ameflu', CAST(200000 AS Decimal(18, 0)), CAST(220000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 7, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (9, 1, N'Acyclovir Stada 400mg ', CAST(100000 AS Decimal(18, 0)), CAST(110000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (11, 1, N'Diclofen 50mg', CAST(50000 AS Decimal(18, 0)), CAST(80000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 5, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (14, 2, N'May tho oxy Owgels', CAST(9000000 AS Decimal(18, 0)), CAST(9500000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (15, 2, N'Mat na mui', CAST(500000 AS Decimal(18, 0)), CAST(900000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 10, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (16, 2, N'Ong nghe y te', CAST(300000 AS Decimal(18, 0)), CAST(450000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (17, 2, N'May chay than', CAST(14000000 AS Decimal(18, 0)), CAST(16000000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 6, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (19, 2, N'May do huyet ap', CAST(1000000 AS Decimal(18, 0)), CAST(1300000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (20, 3, N'Vien sui Vitamin C', CAST(80000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 3, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (25, 3, N'Cetyl Pure', CAST(1000000 AS Decimal(18, 0)), CAST(1500000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 7, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (26, 2, N'Giuong benh cao cap', CAST(20000000 AS Decimal(18, 0)), CAST(24000000 AS Decimal(18, 0)), 1000000, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 3, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (27, 2, N'Xe lan', CAST(500000 AS Decimal(18, 0)), CAST(800000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 15, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (28, 2, N'May chup x-quang', CAST(50000000 AS Decimal(18, 0)), CAST(55000000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 2, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (29, 2, N'May sieu am', CAST(5000000 AS Decimal(18, 0)), CAST(7000000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 8, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (30, 2, N'Buong cham soc tre so sinh', CAST(10000000 AS Decimal(18, 0)), CAST(13000000 AS Decimal(18, 0)), 1000000, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 10, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (31, 3, N'CLA Core', CAST(500000 AS Decimal(18, 0)), CAST(700000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 17, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (32, 3, N'Umka Cold Care ', CAST(300000 AS Decimal(18, 0)), CAST(600000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 20, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
INSERT [dbo].[Product] ([Id], [CategoryId], [ProductName], [Price_in], [Price_out], [Discount], [CreatedDate], [UpdateDate], [WarrantyDate], [View], [Description]) VALUES (33, 3, N'Chanca Piedra', CAST(600000 AS Decimal(18, 0)), CAST(1000000 AS Decimal(18, 0)), NULL, CAST(N'2020-01-06T00:00:00.000' AS DateTime), NULL, NULL, 10, N'<p><strong>Target users:</strong>  Adults and children 14 years and older.</p>
<p><strong>Ingredients:</strong> Vitamin C ………………..1000mg and other ingredients.</p>
<p><strong>Uses:</strong> Vitamin C supplements for the body to enhance immunity and reduce the aging process..</p>
<p><strong>Directions for use:</strong>Dissolve 1 tablet in 200ml of water, take 1 capsule daily. Do not exceed the recommended dosage.</p>
<p><strong>Storage:</strong>  Temperature below 25 degrees C, dry, cool place and avoid direct sunlight.</p><p><strong>Packing:&nbsp;</strong>Tube of 20 effervescent tablets</p>
<p><strong>Brand origin:</strong> Switzerland</p>
<p><strong> Made in:</strong> Switzerland</p>
<p><em>This product is not a medicine and has no effect as a substitute for medicament.<br> 
Keep out of reach of CHILDREN. Read the directions carefully before using.<br> </em></p>
')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Username], [Password], [Email], [Birthday], [Phone]) VALUES (1, N'Nguyên', N'nguyen', N'123', N'nguyen@gmail.com', CAST(N'1999-12-17T00:00:00.000' AS DateTime), N'1234567890')
INSERT [dbo].[Customer] ([Id], [Name], [Username], [Password], [Email], [Birthday], [Phone]) VALUES (2, N'nguyen', N'thao', N'123', N'abc@gmail.com', CAST(N'2000-11-11T00:00:00.000' AS DateTime), N'0123456789')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [EmployeeId], [CustomerId], [Total], [CreatedDate], [UpdateDate], [State], [Description]) VALUES (3, 0, 1, CAST(200000 AS Decimal(18, 0)), CAST(N'2020-07-05T21:26:55.983' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Order] ([Id], [EmployeeId], [CustomerId], [Total], [CreatedDate], [UpdateDate], [State], [Description]) VALUES (4, 0, 1, CAST(315000 AS Decimal(18, 0)), CAST(N'2020-07-05T21:29:16.983' AS DateTime), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [CustomerId], [EmployeeId], [Quanity], [Discount], [Total], [Id]) VALUES (3, 11, 1, NULL, 1, NULL, CAST(80000 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [CustomerId], [EmployeeId], [Quanity], [Discount], [Total], [Id]) VALUES (3, 7, 1, NULL, 1, NULL, CAST(120000 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [CustomerId], [EmployeeId], [Quanity], [Discount], [Total], [Id]) VALUES (4, 5, 1, NULL, 1, NULL, CAST(75000 AS Decimal(18, 0)), 3)
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [CustomerId], [EmployeeId], [Quanity], [Discount], [Total], [Id]) VALUES (4, 7, 1, NULL, 2, NULL, CAST(240000 AS Decimal(18, 0)), 4)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductAdvertising] ON 

INSERT [dbo].[ProductAdvertising] ([Id], [ProductId], [CreatedDate], [Description], [Link], [EndDate]) VALUES (3, 5, CAST(N'2020-02-06T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2020-01-07T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductAdvertising] ([Id], [ProductId], [CreatedDate], [Description], [Link], [EndDate]) VALUES (4, 7, CAST(N'2020-02-06T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2020-01-07T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductAdvertising] ([Id], [ProductId], [CreatedDate], [Description], [Link], [EndDate]) VALUES (5, 8, CAST(N'2020-02-06T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2020-01-07T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductAdvertising] ([Id], [ProductId], [CreatedDate], [Description], [Link], [EndDate]) VALUES (6, 9, CAST(N'2020-02-06T00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2020-01-07T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductAdvertising] OFF
GO
SET IDENTITY_INSERT [dbo].[Lecture] ON 

INSERT [dbo].[Lecture] ([Id], [EmployeeId], [Title], [Subject], [Content], [CreatedDate], [UpdateDate]) VALUES (1, 1, N'Very popular during', N'Medice', N'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor.', CAST(N'2020-02-02T00:00:00.000' AS DateTime), CAST(N'2021-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Lecture] ([Id], [EmployeeId], [Title], [Subject], [Content], [CreatedDate], [UpdateDate]) VALUES (2, 1, N'Corona prevention', N'Corona', N'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor.', CAST(N'2020-03-02T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Lecture] ([Id], [EmployeeId], [Title], [Subject], [Content], [CreatedDate], [UpdateDate]) VALUES (3, 2, N'take care of children', N'Kids', N'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor.', CAST(N'2021-04-05T00:00:00.000' AS DateTime), CAST(N'2022-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Lecture] ([Id], [EmployeeId], [Title], [Subject], [Content], [CreatedDate], [UpdateDate]) VALUES (4, 1, N'Very popular during', N'Kids', N'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor.', CAST(N'2020-03-03T00:00:00.000' AS DateTime), CAST(N'2021-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Lecture] ([Id], [EmployeeId], [Title], [Subject], [Content], [CreatedDate], [UpdateDate]) VALUES (5, 1, N'today is not good', N'Days', N'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor.', CAST(N'2021-03-02T00:00:00.000' AS DateTime), CAST(N'2021-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Lecture] ([Id], [EmployeeId], [Title], [Subject], [Content], [CreatedDate], [UpdateDate]) VALUES (6, 2, N'tomorow ', N'Days', N'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor.', CAST(N'2020-03-02T00:00:00.000' AS DateTime), CAST(N'2020-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Lecture] ([Id], [EmployeeId], [Title], [Subject], [Content], [CreatedDate], [UpdateDate]) VALUES (8, 1, N'the day I went fishing', N'Foods', N'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor.', CAST(N'2020-03-02T00:00:00.000' AS DateTime), CAST(N'2021-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Lecture] ([Id], [EmployeeId], [Title], [Subject], [Content], [CreatedDate], [UpdateDate]) VALUES (10, 1, N'goodmorning enjoy today', N'Happys', N'Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor.', CAST(N'2020-07-04T00:00:00.000' AS DateTime), CAST(N'2020-07-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Lecture] ([Id], [EmployeeId], [Title], [Subject], [Content], [CreatedDate], [UpdateDate]) VALUES (11, 1, N'Why COVID-19 Spreads', N'Corona', N'Pellentesque pretium at justo iaculis vehicula. Aenean vestibulum purus a nulla sollicitudin molestie. Maecenas bibendum erat in erat maximus, vel imperdiet leo mattis. Integer vitae pellentesque massa. Fusce ac suscipit neque. Nam porta lectus nec magna ullamcorper egestas eget at ex. In sit amet dolor vitae felis condimentum rutrum eget ut neque. ', CAST(N'2020-03-05T00:00:00.000' AS DateTime), CAST(N'2020-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Lecture] ([Id], [EmployeeId], [Title], [Subject], [Content], [CreatedDate], [UpdateDate]) VALUES (13, 2, N'covid  2020 ', N'corona', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. I', CAST(N'2020-03-02T00:00:00.000' AS DateTime), CAST(N'2021-02-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Lecture] ([Id], [EmployeeId], [Title], [Subject], [Content], [CreatedDate], [UpdateDate]) VALUES (14, 1, N'this my title', N'subject ', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. I', CAST(N'2020-07-04T00:00:00.000' AS DateTime), CAST(N'2020-03-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Lecture] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (3, 5, NULL, NULL, NULL, N'/Assets/images/product/vitaminH.png', N'vitaminH.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (5, 7, NULL, NULL, NULL, N'/Assets/images/product/Cataflam.png', N'Cataflam.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (6, 8, NULL, NULL, NULL, N'/Assets/images/product/Ameflu.png', N'Ameflu.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (7, 9, NULL, NULL, NULL, N'/Assets/images/product/Acyvlovir.png', N'Acyvlovir.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (9, 11, NULL, NULL, NULL, N'/Assets/images/product/diclofen.png', N'diclofen.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (12, 14, NULL, NULL, NULL, N'/Assets/images/product/maythooxy.png', N'maythooxy.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (13, 15, NULL, NULL, NULL, N'/Assets/images/product/matnamui.png', N'matnamui.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (15, 16, NULL, NULL, NULL, N'/Assets/images/product/ongnghe.png', N'ongnghe.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (16, 17, NULL, NULL, NULL, N'/Assets/images/product/maychaythan.png', N'maychaythan.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (17, 19, NULL, NULL, NULL, N'/Assets/images/product/dohuyetap.png', N'dohuyetap.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (18, 20, NULL, NULL, NULL, N'/Assets/images/product/suiC.png', N'suiC.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (36, NULL, NULL, NULL, 1, N'/Assets/img/blog/blog-2-2.jpg', N'blog2-2.jpg', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (38, NULL, NULL, NULL, 2, N'/Assets/img/service-1-1-1.jpg', N'service-1-1-1.jpg', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (39, NULL, NULL, NULL, 3, N'/Assets/img/service-1-2-1.jpg', N'service-1-2-1.jpg', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (40, NULL, NULL, NULL, 4, N'/Assets/img/service-1-3-1.jpg', N'service-1-3-1.jpg', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (42, NULL, NULL, NULL, 5, N'/Assets/img/service-1-4-1.jpg', N'service-1-4-1.jpg', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (44, 25, NULL, NULL, NULL, N'/Assets/images/product/cetylpure.png', N'cetylpure.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (60, NULL, NULL, 1, NULL, N'C:\Users\nguye\source\repos\ClinicManagement1\ClinicManagement1\Assets\images\UploadFile\beautiful.jpg', N'beautiful.jpg', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (68, 26, NULL, NULL, NULL, N'/Assets/images/product/giuongbenh.png', N'giuongbenh.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (70, 27, NULL, NULL, NULL, N'/Assets/images/product/xelan.png', N'xelan.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (71, 28, NULL, NULL, NULL, N'/Assets/images/product/xquang.png', N'xquang.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (72, 29, NULL, NULL, NULL, N'/Assets/images/product/maysieuam.png', N'maysieuam.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (73, 30, NULL, NULL, NULL, N'/Assets/images/product/sosinh.png', N'sosinh.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (74, 31, NULL, NULL, NULL, N'/Assets/images/product/clacore.png', N'clacore.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (75, 32, NULL, NULL, NULL, N'/Assets/images/product/coldcare.png', N'coldcare.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (76, 33, NULL, NULL, NULL, N'/Assets/images/product/piedra.png', N'piedra.png', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (83, NULL, NULL, NULL, 6, N'/Assets/img/service-1-2-1.jpg', N'service-1-5-1.jpg', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (94, NULL, NULL, NULL, 8, N'/Assets/img/service-1-1-1.jpg', N'nameimg.jpg', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (96, NULL, NULL, NULL, 13, N'/Asset/img/service-1-2-1.jpg', N'nameimg1.jpg', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (98, NULL, NULL, NULL, 10, N'/Assets/img/blog/blog-2-2.jpg', N'nameimg123.jpg', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (100, NULL, NULL, NULL, 14, N'/Assets/img/blog-2-1.jpg', N'kjfsdfhgfkdjf', NULL)
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (105, 5, NULL, NULL, NULL, N'/Assets/img/2-1.jpg', N'vitaminH.png', N'quangcao')
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (106, 7, NULL, NULL, NULL, N'/Assets/img/1.jpg', N'Cataflam.png', N'quangcao')
INSERT [dbo].[Image] ([Id], [ProductId], [EmployeeId], [CustomerId], [LectureId], [Path], [FileName], [Type]) VALUES (107, 8, NULL, NULL, NULL, N'/Assets/img/3-1.jpg', N'Ameflu.png', N'quangcao')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
