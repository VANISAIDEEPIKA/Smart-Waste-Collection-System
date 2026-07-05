# Smart City Waste Collection - Balanced System Architecture

```mermaid
flowchart TB
    subgraph F[Frontend]
        F1[Zone selector + dashboard]
        F2[Map and route view]
        F1 --> F2
    end

    subgraph A[Flask API Layer]
        A1[Zone and planning APIs]
        A2[Analytics and health APIs]
        A1 --> A2
    end

    subgraph C[Decision Core]
        C1[Prioritization + route optimization]
        C2[Vehicle and worker assignment]
        C1 --> C2
    end

    subgraph D[Runtime Data]
        D1[GHMC/KML bin inputs]
        D2[Config + in-memory operational state]
        D1 --> D2
    end

    subgraph O[Operations Model]
        O1[Secondary and tertiary transfer stages]
        O2[Execution-ready collection plan]
        O1 --> O2
    end

    subgraph R[Results]
        R1[Routes and map paths]
        R2[Distance, fuel, emissions KPIs]
        R1 --> R2
    end

    F --> A
    A --> C
    C --> D
    C --> O
    O --> R
    R --> F
```

System flow (moderately simplified):
1. Frontend requests zone data or optimization runs from the Flask API.
2. API orchestrates core planners: zone prioritization, routing, and resource assignment.
3. Core planners consume runtime inputs (GHMC/KML data, config, and in-memory fleet/workers).
4. The operations model structures the plan across secondary and tertiary movement stages.
5. Results are returned as actionable routes, map layers, and KPI metrics.
