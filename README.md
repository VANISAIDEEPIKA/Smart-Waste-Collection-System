# Smart City Waste Collection & Resource Allocation System

## Overview
A prototype-based decision-support system for optimized waste collection that reduces fuel consumption, carbon emissions, and worker workload while improving operational efficiency.

## Features
- **Simulated Data Generation**: Bins, vehicles, and workers
- **Zone-based Organization**: City division for planned collection
- **Intelligent Vehicle Selection**: Based on capacity, fuel efficiency, and pollution status
- **Worker Assignment**: Matched by age, strength, and role capabilities
- **Route Optimization**: K-Means clustering and greedy algorithms
- **Route Visualization**: In-app route and metrics summary
- **Performance Analytics**: Distance, fuel, emissions, and workload metrics

## Technology Stack
- **Backend**: Python (Flask/FastAPI)
- **Optimization**: K-Means, Greedy Algorithms
- **Maps**: In-app route visualization module
- **Frontend**: HTML, CSS, JavaScript
- **Data**: In-memory simulated data (optional CSV export)
- **Visualization**: Dashboard Metrics + Route Tables

## Prototype Mode (No Database)
- The current implementation is intentionally **database-free** for evaluator-friendly execution.
- All workflow data is generated and processed **in memory** during runtime.
- Optional CSV export utilities exist for snapshots, but no persistent DB operations are required.

## Project Structure