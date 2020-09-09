import 'package:flutter/cupertino.dart';

Color violetColor = Color(0xFF7052C5);
Color violet1 = Color(0xFF1E081D);
Color violet2 = Color(0xFF591554);
String baseUrl = "https://app-workbook.herokuapp.com";
//String baseUrl = "https://workbook.ngrok.io";
//String baseUrl = "http://ec2-18-222-203-149.us-east-2.compute.amazonaws.com:8000";
bool isEmailVerified = false;
List<String> states = [
  "Andhra Pradesh",
  "Arunachal Pradesh",
  "Assam",
  "Bihar",
  "Chhattisgarh",
  "Dadra and Nagar ",
  "Daman and Diu",
  "Delhi",
  "Goa",
  "Gujarat",
  "Haryana",
  "Himachal Pradesh",
  "Jammu and Kashmir",
  "Jharkhand",
  "Karnataka",
  "Kerala",
  "Madhya Pradesh",
  "Maharashtra",
  "Manipur",
  "Meghalaya",
  "Mizoram",
  "Nagaland",
  "Orissa",
  "Puducherry",
  "Punjab",
  "Rajasthan",
  "Sikkim",
  "Tamil Nadu",
  "Telangana",
  "Tripura",
  "Uttar Pradesh",
  "Uttarakhand",
  "West Bengal"
];

var cities = {
  'Andhra Pradesh': [
    "Anantapur",
    "Chittoor",
    "East Godavari",
    "Guntur",
    "Krishna",
    "Kurnool",
    "Prakasam",
    "Srikakulam",
    "SriPotti Nellore",
    "Vishakhapatnam",
    "Vizianagaram",
    "West Godavari",
    "Cudappah",
    "Others",
  ],
  'Arunachal Pradesh': [
    "Anjaw",
    "Changlang",
    "Dibang Valley",
    "East Siang",
    "East Kameng",
    "Kurung Kumey",
    "Lohit",
    "Longding",
    "Lower Dibang Valley",
    "Lower Subansiri",
    "Papum Pare",
    "Tawang",
    "Tirap",
    "Upper Siang",
    "Upper Subansiri",
    "West Kameng",
    "West Siang",
    "Others",
  ],
  'Assam': [
    "Baksa",
    "Barpeta",
    "Bongaigaon",
    "Cachar",
    "Chirang",
    "Darrang",
    "Dhemaji",
    "Dima Hasao",
    "Dhubri",
    "Dibrugarh",
    "Goalpara",
    "Golaghat",
    "Hailakandi",
    "Jorhat",
    "Kamrup",
    "Kamrup Metropolitan",
    "Karbi Anglong",
    "Karimganj",
    "Kokrajhar",
    "Lakhimpur",
    "Morigaon",
    "Nagaon",
    "Nalbari",
    "Sivasagar",
    "Sonitpur",
    "Tinsukia",
    "Udalguri",
    "Others",
  ],
  'Bihar': [
    "Araria",
    "Arwal",
    "Aurangabad",
    "Banka",
    "Begusarai",
    "Bhagalpur",
    "Bhojpur",
    "Buxar",
    "Darbhanga",
    "East Champaran",
    "Gaya",
    "Gopalganj",
    "Jamui",
    "Jehanabad",
    "Kaimur",
    "Katihar",
    "Khagaria",
    "Kishanganj",
    "Lakhisarai",
    "Madhepura",
    "Madhubani",
    "Munger",
    "Muzaffarpur",
    "Nalanda",
    "Nawada",
    "Patna",
    "Purnia",
    "Rohtas",
    "Saharsa",
    "Samastipur",
    "Saran",
    "Sheikhpura",
    "Sheohar",
    "Sitamarhi",
    "Siwan",
    "Supaul",
    "Vaishali",
    "West Champaran",
    "Others",
  ],
  'Chhattisgarh': [
    "Bastar",
    "Bijapur",
    "Bilaspur",
    "Dantewada",
    "Dhamtari",
    "Durg",
    "Jashpur",
    "Janjgir-Champa",
    "Korba",
    "Koriya",
    "Kanker",
    "Kabirdham",
    "Mahasamund",
    "Narayanpur",
    "Raigarh",
    "Rajnandgaon",
    "Raipur",
    "Surajpur",
    "Surguja",
    "Others",
  ],
  'Dadra and Nagar Haveli': [
    "Amal",
    "Silvassa",
    "Others",
  ],
  'Daman and Diu': [
    "Daman",
    "Diu",
    "Others",
  ],
  'Delhi': [
    "Delhi",
    "New Delhi",
    "North Delhi",
    "Noida",
    "Patparganj",
    "Sonabarsa",
    "Tughlakabad",
    "Others",
  ],
  'Goa': [
    "Chapora",
    "Dabolim",
    "Madgaon",
    "Marmugao (Marmagao)",
    "Panaji Port",
    "Panjim",
    "Pellet Plant",
    "Talpona",
    "Vasco da Gama",
    "Others",
  ],
  'Gujarat': [
    "Ahmedabad",
    "Amreli district",
    "Anand",
    "Aravalli",
    "Banaskantha",
    "Bharuch",
    "Bhavnagar",
    "Dahod",
    "Dang",
    "Gandhinagar",
    "Jamnagar",
    "Junagadh",
    "Kutch",
    "Kheda",
    "Mehsana",
    "Narmada",
    "Navsari",
    "Patan",
    "Panchmahal",
    "Porbandar",
    "Rajkot",
    "Sabarkantha",
    "Surendranagar",
    "Surat",
    "Tapi",
    "Vadodara",
    "Valsad",
    "Others",
  ],
  'Haryana': [
    "Ambala",
    "Bhiwani",
    "Faridabad",
    "Fatehabad",
    "Gurgaon",
    "Hissar",
    "Jhajjar",
    "Jind",
    "Karnal",
    "Kaithal",
    "Kurukshetra",
    "Mahendragarh",
    "Mewat",
    "Palwal",
    "Panchkula",
    "Panipat",
    "Rewari",
    "Rohtak",
    "Sirsa",
    "Sonipat",
    "Yamuna Nagar",
    "Others",
  ],
  'Himachal Pradesh': [
    "Baddi",
    "Baitalpur",
    "Chamba",
    "Dharamsala",
    "Hamirpur",
    "Kangra",
    "Kinnaur",
    "Kullu",
    "Lahaul & Spiti",
    "Mandi",
    "Simla",
    "Sirmaur",
    "Solan",
    "Una",
    "Others",
  ],
  'Jammu and Kashmir': [
    "Jammu",
    "Leh",
    "Rajouri",
    "Srinagar",
    "Others",
  ],
  'Jharkhand': [
    "Bokaro",
    "Chatra",
    "Deoghar",
    "Dhanbad",
    "Dumka",
    "East Singhbhum",
    "Garhwa",
    "Giridih",
    "Godda",
    "Gumla",
    "Hazaribag",
    "Jamtara",
    "Khunti",
    "Koderma",
    "Latehar",
    "Lohardaga",
    "Pakur",
    "Palamu",
    "Ramgarh",
    "Ranchi",
    "Sahibganj",
    "Seraikela Kharsawan",
    "Simdega",
    "West Singhbhum",
    "Others",
  ],
  'Karnataka': [
    "Bagalkot",
    "Bangalore",
    "Bangalore Urban",
    "Belgaum",
    "Bellary",
    "Bidar",
    "Bijapur",
    "Chamarajnagar",
    "Chikkamagaluru",
    "Chikkaballapur",
    "Chitradurga",
    "Davanagere",
    "Dharwad",
    "Dakshina Kannada",
    "Gadag",
    "Gulbarga",
    "Hassan",
    "Haveri district",
    "Kodagu",
    "Kolar",
    "Koppal",
    "Mandya",
    "Mysore",
    "Raichur",
    "Shimoga",
    "Tumkur",
    "Udupi",
    "Uttara Kannada",
    "Ramanagara",
    "Yadgir",
    "Others",
  ],
  'Kerala': [
    "Alappuzha",
    "Ernakulam",
    "Idukki",
    "Kannur",
    "Kasaragod",
    "Kollam",
    "Kottayam",
    "Kozhikode",
    "Malappuram",
    "Palakkad",
    "Pathanamthitta",
    "Thrissur",
    "Thiruvananthapuram",
    "Wayanad",
    "Others",
  ],
  'Madhya Pradesh': [
    "Alirajpur",
    "Anuppur",
    "Ashoknagar",
    "Balaghat",
    "Barwani",
    "Betul",
    "Bhilai",
    "Bhind",
    "Bhopal",
    "Burhanpur",
    "Chhatarpur",
    "Chhindwara",
    "Damoh",
    "Dewas",
    "Dhar",
    "Guna",
    "Gwalior",
    "Hoshangabad",
    "Indore",
    "Itarsi",
    "Jabalpur",
    "Khajuraho",
    "Khandwa",
    "Khargone",
    "Malanpur",
    "Malanpuri (Gwalior)",
    "Mandla",
    "Mandsaur",
    "Morena",
    "Narsinghpur",
    "Neemuch",
    "Panna",
    "Pithampur",
    "Raipur",
    "Raisen",
    "Ratlam",
    "Rewa",
    "Sagar",
    "Satna",
    "Sehore",
    "Seoni",
    "Shahdol",
    "Singrauli",
    "Ujjain",
    "Others",
  ],
  'Maharashtra': [
    "Ahmednagar",
    "Akola",
    "Amravati",
    "Aurangabad",
    "Beed",
    "Bhandara",
    "Buldhana",
    "Chandrapur",
    "Dhule",
    "Gadchiroli",
    "Gondia",
    "Hingoli",
    "Jalgaon",
    "Jalna",
    "Kolhapur",
    "Latur",
    "Mumbai City",
    "Mumbai Suburban",
    "Nagpur",
    "Nanded",
    "Nandurbar",
    "Nashik",
    "Osmanabad",
    "Palghar",
    "Parbhani",
    "Pune",
    "Raigad",
    "Ratnagiri",
    "Sangli",
    "Satara",
    "Sindhudurg",
    "Solapur",
    "Thane",
    "Wardha",
    "Washim",
    "Yavatmal",
    "Others",
  ],
  'Manipur': [
    "Bishnupur",
    "Churachandpur",
    "Chandel",
    "Imphal East",
    "Senapati",
    "Tamenglong",
    "Thoubal",
    "Ukhrul",
    "Imphal West",
    "Others",
  ],
  'Meghalaya': [
    "Baghamara",
    "Balet",
    "Barsora",
    "Bolanganj",
    "Dalu",
    "Dawki",
    "Ghasuapara",
    "Mahendraganj",
    "Moreh",
    "Ryngku",
    "Shella Bazar",
    "Shillong",
    "Others",
  ],
  'Mizoram': [
    "Aizawl",
    "Champhai",
    "Kolasib",
    "Lawngtlai",
    "Lunglei",
    "Mamit",
    "Saiha",
    "Serchhip",
    "Others",
  ],
  'Nagaland': [
    "Dimapur",
    "Kiphire",
    "Kohima",
    "Longleng",
    "Mokokchung",
    "Mon",
    "Peren",
    "Phek",
    "Tuensang",
    "Wokha",
    "Zunheboto",
    "Others",
  ],
  'Orissa': [
    "Bahabal Pur",
    "Bhubaneswar",
    "Chandbali",
    "Gopalpur",
    "Jeypore",
    "Paradip Garh",
    "Puri",
    "Rourkela",
    "Others",
  ],
  'Puducherry': [
    "Karaikal",
    "Mahe",
    "Pondicherry",
    "Yanam",
    "Others",
  ],
  'Punjab': [
    "Amritsar",
    "Barnala",
    "Bathinda",
    "Firozpur",
    "Faridkot",
    "Fatehgarh Sahib",
    "Fazilka",
    "Gurdaspur",
    "Hoshiarpur",
    "Jalandhar",
    "Kapurthala",
    "Ludhiana",
    "Mansa",
    "Moga",
    "Sri Muktsar Sahib",
    "Pathankot",
    "Patiala",
    "Rupnagar",
    "Ajitgarh (Mohali)",
    "Sangrur",
    "Shahid Bhagat Singh Nagar",
    "Tarn Taran",
    "Others",
  ],
  'Rajasthan': [
    "Ajmer",
    "Banswara",
    "Barmer",
    "Barmer Rail Station",
    "Basni",
    "Beawar",
    "Bharatpur",
    "Bhilwara",
    "Bhiwadi",
    "Bikaner",
    "Bongaigaon",
    "Boranada, Jodhpur",
    "Chittaurgarh",
    "Fazilka",
    "Ganganagar",
    "Jaipur",
    "Jaipur-Kanakpura",
    "Jaipur-Sitapura",
    "Jaisalmer",
    "Jodhpur",
    "Jodhpur-Bhagat Ki Kothi",
    "Jodhpur-Thar",
    "Kardhan",
    "Kota",
    "Munabao Rail Station",
    "Nagaur",
    "Rajsamand",
    "Sawaimadhopur",
    "Shahdol",
    "Shimoga",
    "Tonk",
    "Udaipur",
    "Others",
  ],
  'Sikkim': [
    "Chamurci",
    "Gangtok",
    "Others",
  ],
  'Tamil Nadu': [
    "Ariyalur",
    "Chennai",
    "Coimbatore",
    "Cuddalore",
    "Dharmapuri",
    "Dindigul",
    "Erode",
    "Kanchipuram",
    "Kanyakumari",
    "Karur",
    "Krishnagiri",
    "Madurai",
    "Mandapam",
    "Nagapattinam",
    "Nilgiris",
    "Namakkal",
    "Perambalur",
    "Pudukkottai",
    "Ramanathapuram",
    "Salem",
    "Sivaganga",
    "Thanjavur",
    "Thiruvallur",
    "Tirupur",
    "Tiruchirapalli",
    "Theni",
    "Tirunelveli",
    "Thanjavur",
    "Thoothukudi",
    "Tiruvallur",
    "Tiruvannamalai",
    "Vellore",
    "Villupuram",
    "Viruthunagar",
    "Others",
  ],
  'Telangana': [
    "Adilabad",
    "Hyderabad",
    "Karimnagar",
    "Mahbubnagar",
    "Medak",
    "Nalgonda",
    "Nizamabad",
    "Ranga Reddy",
    "Warangal",
    "Others",
  ],
  'Tripura': [
    "Agartala",
    "Dhalaighat",
    "Kailashahar",
    "Kamalpur",
    "Kanchanpur",
    "Kel Sahar Subdivision",
    "Khowai",
    "Khowaighat",
    "Mahurighat",
    "Old Raghna Bazar",
    "Sabroom",
    "Srimantapur",
    "Others",
  ],
  'Uttar Pradesh': [
    "Agra",
    "Allahabad",
    "Auraiya",
    "Banbasa",
    "Bareilly",
    "Berhni",
    "Bhadohi",
    "Dadri",
    "Dharchula",
    "Gandhar",
    "Gauriphanta",
    "Ghaziabad",
    "Gorakhpur",
    "Gunji",
    "Jarwa",
    "Jhulaghat (Pithoragarh)",
    "Kanpur",
    "Katarniyaghat",
    "Khunwa",
    "Loni",
    "Lucknow",
    "Meerut",
    "Moradabad",
    "Muzaffarnagar",
    "Nepalgunj Road",
    "Pakwara (Moradabad)",
    "Pantnagar",
    "Saharanpur",
    "Sonauli",
    "Surajpur",
    "Tikonia",
    "Varanasi",
    "Others",
  ],
  'Uttarakhand': [
    "Almora",
    "Badrinath",
    "Bangla",
    "Barkot",
    "Bazpur",
    "Chamoli",
    "Chopra",
    "Dehra Dun",
    "Dwarahat",
    "Garhwal",
    "Haldwani",
    "Hardwar",
    "Haridwar",
    "Jamal",
    "Jwalapur",
    "Kalsi",
    "Kashipur",
    "Mall",
    "Mussoorie",
    "Nahar",
    "Naini",
    "Pantnagar",
    "Pauri",
    "Pithoragarh",
    "Rameshwar",
    "Rishikesh",
    "Rohni",
    "Roorkee",
    "Sama",
    "Saur",
    "Others",
  ],
  'West Bengal': [
    "Alipurduar",
    "Bankura",
    "Bardhaman",
    "Birbhum",
    "Cooch Behar",
    "Dakshin Dinajpur",
    "Darjeeling",
    "Hooghly",
    "Howrah",
    "Jalpaiguri",
    "Kolkata",
    "Maldah",
    "Murshidabad",
    "Nadia",
    "North 24 Parganas",
    "Paschim Medinipur",
    "Purba Medinipur",
    "Purulia",
    "South 24 Parganas",
    "Uttar Dinajpur",
    "Others",
  ],
};

List<String> instituteType = ['Joint Venture', 'LLC', 'Proprietary'];
List<String> institutes = [];
List<String> grades = [];
List divisions = [];
List divisionData = [];
List<String> carNumber = ['Car Number 1', 'Car Number 2', 'Car Number 3'];
List routeData = [];
List routeNames = ['Route 1', 'Route 2'];
List locationNames = [];
