# Untangular

Untangular is a native iOS utility built to visualize and resolve complex relational data. Unlike standard apps that rely on basic UI components, Untangular utilizes Core Graphics (Quartz 2D) to render dynamic, interactive environments where users can physically "untangle" nodes and connections in real-time.


Untangular 🕸️

A Logic-Based Spatial Puzzle built with Core Graphics

Untangular is an interactive iOS puzzle game that challenges users to reorganize a tangled web of interconnected nodes. The objective is simple but mathematically complex: move the nodes until no connection lines intersect.

🧠 The Core Logic

The project demonstrates advanced problem-solving by implementing a 2D Matrix Determinant algorithm to detect line intersections in real-time.

Line Intersection Algorithm

The game calculates the intersection of two line segments $(P1, P2)$ and $(P3, P4)$ using the following logic:

Vectors: It calculates the delta ($dx, dy$) for both line segments.

Determinant: It computes the determinant to check if lines are parallel.

Coefficients: It verifies if the intersection point lies within the scalar range $[0, 1]$ for both segments, ensuring the "cross" happens on the visible line and not just the infinite trajectory.

🛠 Technical Implementation
1. Dynamic Rendering with UIGraphicsImageRenderer

   -> Instead of using heavy UIView layers for every line, Untangular uses a highly optimized redrawLines() function. This creates a single UIImage on the fly as the user drags a node, ensuring a buttery-smooth 60 FPS experience.
   
2. Reactive UI

   -> Closures: Uses a dragChanged closure on the ConnectionView to trigger the redrawLines() call in the parent ViewController.
   
   -> State Management: The game dynamically colors lines Green (clear) or Red (intersecting) by iterating through all active connections and checking their spatial relationship.
5. Procedural Level Generation
   
   The game features an infinite leveling system. Each levelUp() call:
   
    -> Increases the complexity by adding more nodes.
   
    -> Randomizes node placement using CGFloat.random.
   
    -> Re-links the circular doubly-linked-list structure of the connections.
   

🏗 Setup & Requirements

  -> Language: Swift 5.9+
  
  -> Platform: iOS 15.0+
  
  -> IDE: Xcode 15.0+
