1. What is PostgreSQL?
উত্তর. PostgreSQL হল একটি ওপেন-সোর্স রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম (RDBMS) যা তার নির্ভরযোগ্যতা, মাপযোগ্যতা এবং জটিল প্রশ্ন এবং ডেটা প্রকারের জন্য বৈশিষ্ট্য সমৃদ্ধ সমর্থনের জন্য পরিচিত।
2. What is the purpose of a database schema in PostgreSQL?
উত্তর. একটি স্কিমা হলো ডাটাবেসের ভিতরে একটি লজিক্যাল স্ট্রাকচার বা নকশা যা টেবিল, ভিউ, ফাংশন ইত্যাদির সংগঠন করে। এটি ডেটা অর্গানাইজ ও আলাদা রাখতে সাহায্য করে এবং বড় প্রজেক্টে ক্লিন স্ট্রাকচার বজায় রাখতে গুরুত্বপূর্ণ।
3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
উত্তর.
Primary Key: একটি টেবিলের এমন একটি কলাম যা প্রতিটি রোকে ইউনিকভাবে আইডেন্টিফাই করে। এটি কখনও null হতে পারে না।

Foreign Key: অন্য একটি টেবিলের Primary Key কে রেফারেন্স করে। এটি দুই টেবিলের মধ্যে সম্পর্ক তৈরি করতে ব্যবহৃত হয়।
4. What is the difference between the VARCHAR and CHAR data types?
উত্তর. VARCHAR(n): পরিবর্তনশীল দৈর্ঘ্যের স্ট্রিং যা সর্বোচ্চ n ক্যারেক্টার পর্যন্ত থাকতে পারে। এটি প্রয়োজনমতো জায়গা নেয়।

CHAR(n): নির্দিষ্ট দৈর্ঘ্যের স্ট্রিং, সবসময় n ক্যারেক্টার রাখে; কম থাকলেও অতিরিক্ত জায়গা পূরণ করে দেয়।
5. Explain the purpose of the WHERE clause in a SELECT statement.
উত্তর. WHERE ক্লজ ব্যবহৃত হয় নির্দিষ্ট শর্ত অনুযায়ী ডেটা ফিল্টার করার জন্য। এটি এমন রো বেছে নেয় যেগুলো শর্ত পূরণ করে।
6. What are the LIMIT and OFFSET clauses used for?
উত্তর. 
LIMIT: কতগুলো রেকর্ড রিটার্ন করতে হবে সেটি নির্ধারণ করে।

OFFSET: কতগুলো রেকর্ড স্কিপ করে পরবর্তী রেকর্ড থেকে শুরু করবে তা নির্দেশ করে।
7. How can you modify data using UPDATE statements?
উত্তর. UPDATE স্টেটমেন্ট দিয়ে নির্দিষ্ট শর্তের ভিত্তিতে ডেটা আপডেট করা হয়।
8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
উত্তর. JOIN ব্যবহৃত হয় একাধিক টেবিল থেকে সম্পর্কযুক্ত ডেটা একত্রে রিটার্ন করতে। এটি টেবিলগুলোর মধ্যে সম্পর্ক তৈরি করে।
9. Explain the GROUP BY clause and its role in aggregation operations.
উত্তর. GROUP BY ক্লজ ডেটাকে নির্দিষ্ট কলামের উপর ভিত্তি করে গ্রুপ করে। এটি Aggregation ফাংশন যেমন COUNT(), SUM() প্রভৃতি ব্যবহারের সময় প্রয়োজন হয়।
10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?
উত্তর. 
COUNT(): রেকর্ড সংখ্যা গণনা করে

SUM(): নির্দিষ্ট কলামের মানগুলোর যোগফল করে

AVG(): গড় মান বের করে