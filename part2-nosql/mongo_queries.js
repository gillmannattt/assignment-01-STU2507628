// OP1: insertMany() — insert all documents
db.products.insertMany([
  {
    product_id: "E101",
    name: "iPhone 14",
    category: "Electronics",
    price: 80000,
    brand: "Apple",
    specs: { warranty_years: 1, battery: "3279mAh", storage: "128GB" },
    features: ["5G", "Face ID", "Dual Camera"]
  },
  {
    product_id: "C201",
    name: "Men's Denim Jacket",
    category: "Clothing",
    price: 2500,
    brand: "Levis",
    sizes: ["S", "M", "L", "XL"],
    material: "Denim",
    colors: ["Blue", "Black"]
  },
  {
    product_id: "G301",
    name: "Organic Milk",
    category: "Groceries",
    price: 60,
    brand: "Amul",
    expiry_date: new Date("2024-12-30"),
    nutrition: { calories: 150, protein: "8g", fat: "8g" }
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

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { product_id: "E101" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() on category
db.products.createIndex({ category: 1 });

// Reason:
// Indexing the category field improves query performance,
// especially when filtering products by category (e.g., Electronics, Groceries).
