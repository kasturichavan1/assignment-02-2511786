## Design Justification

The architecture is designed to handle multiple types of data efficiently, including structured, semi-structured, and unstructured data.

Data is first collected from various sources such as CSV files, JSON logs, and images, and stored in a Data Lake. This allows the system to store raw data at scale without strict schema requirements.

An ETL (Extract, Transform, Load) layer is used to clean and transform the data. This step ensures consistency by standardizing formats, handling missing values, and preparing the data for analysis.

The processed data is then loaded into a Data Warehouse, where it is structured into tables suitable for analytical queries and reporting. This improves performance and enables business intelligence operations.

Finally, the data is used for analytics, dashboards, and machine learning applications. This layered architecture ensures scalability, flexibility, and efficient data processing, making it suitable for modern data-driven systems.
