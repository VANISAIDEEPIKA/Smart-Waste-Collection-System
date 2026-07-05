# Smart City Waste Collection & Resource Allocation System

## Overview

The **Smart City Waste Collection & Resource Allocation System** is a prototype-based decision-support system designed to optimize municipal waste collection operations. It improves collection efficiency by prioritizing waste bins, optimizing collection routes, and intelligently allocating vehicles and sanitation workers.

The system leverages **K-Means Clustering** for grouping nearby waste bins and a **Greedy Nearest Neighbor Algorithm** for route optimization, helping reduce travel distance, fuel consumption, carbon emissions, and operational costs while improving workforce utilization.

---

## Features

- Smart waste bin prioritization based on fill levels
- Zone-wise waste collection planning
- Intelligent vehicle selection based on capacity, fuel efficiency, and pollution status
- Worker allocation based on role capabilities and workload
- Route optimization using K-Means Clustering and Greedy algorithms
- Interactive dashboard for route visualization and system monitoring
- Performance analytics including travel distance, fuel usage, carbon emissions, and workforce utilization
- Simulated data generation for waste bins, vehicles, and workers
- Prototype implementation without database dependency

---

## Technology Stack

### Backend
- Python
- Flask

### Frontend
- HTML
- CSS
- JavaScript

### Machine Learning & Data Processing
- Scikit-learn
- Pandas
- NumPy

### Optimization Algorithms
- K-Means Clustering
- Greedy Nearest Neighbor Algorithm

### Data
- In-memory simulated datasets
- Optional CSV export

---

## Project Workflow

1. Generate or load waste bin, vehicle, and worker data.
2. Divide the city into operational zones.
3. Prioritize waste bins based on fill levels.
4. Cluster nearby bins using K-Means Clustering.
5. Generate optimized collection routes.
6. Assign suitable vehicles and sanitation workers.
7. Analyze system performance metrics.
8. Display optimized routes and analytics on the dashboard.

---

## Team

### 👩‍💼 Vani Sai Deepika — Team Lead
- Led project planning and coordinated the team throughout the development lifecycle.
- Assigned tasks, monitored progress, and ensured timely completion of project milestones.
- Coordinated module integration and assisted in implementation, testing, and final project review.

### 👩‍💻 Varsha Rathnam — Developer
- Developed application modules and implemented the project functionality.
- Integrated backend logic and optimization algorithms.

### 🧪 Vaishnavi Suroju — Testing
- Performed unit testing, integration testing, and system validation.
- Identified bugs and verified application functionality.

### 📄 Punna Navya — Documentation
- Prepared the project documentation, report, and presentation.
- Documented the system design, methodology, and implementation details.

---

## Future Enhancements

- IoT-enabled smart bin monitoring
- Real-time GPS tracking for waste collection vehicles
- AI-based waste generation prediction
- Mobile application for field staff
- Cloud deployment for large-scale smart city integration
- Integration with live municipal datasets and GIS services

---

## License

This project was developed as part of the **Bachelor of Technology (Computer Science & Engineering)** curriculum for academic and educational purposes.
