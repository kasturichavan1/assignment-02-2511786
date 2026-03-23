// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    product_id: "E101",
    name: "Smartphone",
    category: "Electronics",
    price: 30000,
    specs: {
      brand: "Samsung",
      warranty_years: 2,
      voltage: "220V"
    },
    features: ["5G", "AMOLED", "128GB Storage"]
  },
  {
    product_id: "C101",
    name: "Denim Jacket",
    category: "Clothing",
    price: 2500,
    details: {
      brand: "Levi's",
      sizes_available: ["S", "M", "L", "XL"],
      material: "Denim"
    },
    colors: ["Blue", "Black"]
  },
  {
    product_id: "G101",
    name: "Milk",
    category: "Groceries",
    price: 60,
    expiry_date: new Date("2024-12-30"),
    nutrition: {
      calories: 150,
      fat: "8g",
      protein: "6g"
    }
  }
]);

// OP2: find Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne() — add discount_percent field
db.products.updateOne(
  { product_id: "E101" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — index on category field
db.products.createIndex({ category: 1 });


