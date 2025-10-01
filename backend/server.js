const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Sample Data (in-memory for simplicity)
const categories = [
    { id: "1", name: "Travel & Stay", image: "https://picsum.photos/id/1040/600/400" }, // Higher resolution, travel-related
    { id: "2", name: "Banquets & Venues", image: "https://picsum.photos/id/1042/600/400" }, // Higher resolution, venue-related
    { id: "3", name: "Retail & Shops", image: "https://picsum.photos/id/1084/600/400" }, // Higher resolution, retail-related
];

const banquetsAndVenues = [
    { id: "b1", name: "Grand Hyatt Mumbai", location: "Mumbai", description: "Luxury hotel with multiple banquet halls.", image: "https://picsum.photos/id/1042/600/400" },
    { id: "b2", name: "The Lalit Mumbai", location: "Mumbai", description: "Elegant venue for weddings and corporate events.", image: "https://picsum.photos/1048/600/400" },
    { id: "b3", name: "Taj Lands End", location: "Mumbai", description: "Iconic sea-facing venue.", image: "https://picsum.photos/id/1049/600/400" },
];

const travelAndStay = [
    { id: "t1", name: "The Leela Palace Udaipur", location: "Udaipur", description: "Luxury hotel with stunning lake views.", image: "https://picsum.photos/id/1040/600/400" },
    { id: "t2", name: "Wildflower Hall Shimla", location: "Shimla", description: "A colonial-era mansion amidst the Himalayas.", image: "https://picsum.photos/id/1050/600/400" },
];

const retailAndShops = [
    { id: "r1", name: "Phoenix Marketcity", location: "Mumbai", description: "Large shopping mall with various brands.", image: "https://picsum.photos/id/1084/600/400" },
    { id: "r2", name: "Linking Road", location: "Mumbai", description: "Popular street shopping destination.", image: "https://picsum.photos/id/1069/600/400" },
];

// Routes
app.get("/", (req, res) => {
    res.send("Welcome to the Mobile App Backend API!");
});

app.get("/api/categories", (req, res) => {
    res.json(categories);
});

app.get("/api/banquets", (req, res) => {
    res.json(banquetsAndVenues);
});

app.get("/api/travel", (req, res) => {
    res.json(travelAndStay);
});

app.get("/api/retail", (req, res) => {
    res.json(retailAndShops);
});

app.post("/api/banquets/search", (req, res) => {
    const { eventType, country, state, city, eventDates, numberOfAdults, cateringPreference, cuisines, budget } = req.body;
    // In a real application, this would involve querying a database with these filters.
    // For this example, we\"ll just return all banquets as a placeholder.
    console.log("Search criteria:", req.body);
    res.json(banquetsAndVenues);
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});

