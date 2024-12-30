actor Calculator {
    // Variable to store the current result
    private var currentValue: Float = 0.0;
    
    // Add to current value
    public func add(x: Float): async Float {
        currentValue += x;
        return currentValue;
    };
    
    // Subtract from current value
    public func subtract(x: Float): async Float {
        currentValue -= x;
        return currentValue;
    };
    
    // Multiply current value
    public func multiply(x: Float): async Float {
        currentValue *= x;
        return currentValue;
    };
    
    // Divide current value
    public func divide(x: Float): async ?Float {
        if (x == 0) {
            return null; // Return null for division by zero
        };
        currentValue /= x;
        return ?currentValue;
    };
    
    // Clear the current value
    public func clear(): async () {
        currentValue := 0.0;
    };
    
    // Get the current value
    public query func getCurrentValue(): async Float {
        return currentValue;
    };
} 