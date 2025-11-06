# Example 2: Technical Prompt Optimization

## 📝 Scenario
A developer needs help implementing a sorting algorithm but provides minimal details.

---

## 🔴 BEFORE: Raw Input Prompt

```
Code a sorting algorithm
```

**Problems with this prompt:**
- ❌ No algorithm type specified
- ❌ No programming language mentioned
- ❌ Missing complexity requirements
- ❌ No test cases or validation
- ❌ Unclear output expectations
- ❌ No performance criteria

---

## 🟢 AFTER: Optimized Prompt (Using Framework v3.0)

```yaml
# ════════════════════════════════════════
# Advanced Sorting Algorithm Implementation
# ════════════════════════════════════════

METADATA:
  id: "algo-sort-001"
  version: "1.0"
  ev_score: 0.92
  target_model: "universal"
  language: "en"

ROLE:
  You are an expert Software Engineer and Algorithm Specialist with deep expertise in:
  - Algorithm design and optimization
  - Computational complexity analysis (Big O notation)
  - Data structures and their applications
  - Performance profiling and benchmarking
  - Code quality and best practices across multiple languages
  - Test-driven development (TDD)

TASK:
  Implement a complete sorting algorithm solution that includes:
  - Fully functional, production-ready code
  - Comprehensive documentation and comments
  - Time and space complexity analysis
  - Test cases demonstrating correctness
  - Performance optimization recommendations
  - Use case guidance

WORKFLOW:
  1. Clarify algorithm requirements and constraints
  2. Design the algorithm with pseudocode (if complex)
  3. Implement the sorting algorithm with clear documentation
  4. Analyze time and space complexity
  5. Create comprehensive test cases (including edge cases)
  6. Provide optimization suggestions and use case recommendations
  7. Include comparison with alternative algorithms

INPUTS:
  Required:
  - algorithm_type: enum - ["quicksort", "mergesort", "heapsort", "bubble", 
    "insertion", "selection", "radix", "counting", "bucket", "timsort", "custom"]
  - programming_language: enum - ["python", "javascript", "java", "c++", 
    "go", "rust", "typescript", "c#"]
  - data_type: string - Type of elements to sort 
    (e.g., "integers", "strings", "objects", "custom")
  
  Optional:
  - sort_order: enum - ["ascending", "descending"] (default: "ascending")
  - stability_required: boolean - Must preserve relative order of equal elements 
    (default: false)
  - in_place: boolean - Must sort without extra array (default: false)
  - comparison_function: string - Custom comparison logic description
  - max_array_size: integer - Expected maximum input size for optimization
  - include_benchmarks: boolean - Include performance benchmarks (default: false)

CONSTRAINTS:
  Code Quality:
  - Code must be production-ready and well-documented
  - Follow language-specific style guides and best practices
  - Use meaningful variable and function names
  - Include comprehensive inline comments
  - Implement proper error handling
  - Add input validation
  
  Functionality:
  - Handle edge cases: empty array, single element, duplicates, already sorted
  - Ensure algorithm correctness for all valid inputs
  - Maintain specified stability if required
  - Respect in-place constraint if specified
  - Support custom comparison functions if provided
  
  Performance:
  - Optimize for time complexity where possible
  - Minimize space complexity if in-place required
  - Avoid unnecessary operations
  - Use efficient data structures
  
  Documentation:
  - Explain algorithm approach clearly
  - Document all parameters and return values
  - Include complexity analysis with justification
  - Provide usage examples

OUTPUT_FORMAT:
  1. **Algorithm Overview** (100-150 words)
     - Brief description of the algorithm
     - Key characteristics (stable/unstable, in-place/not, etc.)
     - When to use this algorithm
  
  2. **Complete Implementation**
     ```[language]
     # Fully documented code with:
     # - Function signature with type hints
     # - Input validation
     # - Core algorithm logic
     # - Helper functions if needed
     # - Inline comments explaining key steps
     ```
  
  3. **Complexity Analysis**
     - **Time Complexity:**
       - Best Case: O(?)
       - Average Case: O(?)
       - Worst Case: O(?)
     - **Space Complexity:** O(?)
     - **Justification:** Explain why these complexities
  
  4. **Test Cases** (Minimum 7 cases)
     ```[language]
     # Test 1: Empty array
     # Test 2: Single element
     # Test 3: Already sorted
     # Test 4: Reverse sorted
     # Test 5: Duplicates
     # Test 6: Random order
     # Test 7: Large dataset (if applicable)
     ```
  
  5. **Optimization Notes**
     - Current optimizations applied
     - Further optimization opportunities
     - Trade-offs and considerations
  
  6. **Use Cases & Recommendations**
     - When to use this algorithm
     - When NOT to use this algorithm
     - Alternative algorithms for different scenarios
  
  7. **Comparison Table** (if applicable)
     | Algorithm | Time (Avg) | Space | Stable | In-Place |
     |-----------|------------|-------|--------|----------|
     | [This]    | O(?)       | O(?)  | Yes/No | Yes/No   |
     | [Alt 1]   | O(?)       | O(?)  | Yes/No | Yes/No   |
     | [Alt 2]   | O(?)       | O(?)  | Yes/No | Yes/No   |

STYLE:
  - Professional code documentation style
  - Clear, concise inline comments
  - Descriptive variable names (no single letters except i, j for loops)
  - Language: English
  - Code formatting: Follow language-specific conventions
  - Comment style: Explain "why" not just "what"

EXAMPLES:

Example Input:
  algorithm_type: "quicksort"
  programming_language: "python"
  data_type: "integers"
  sort_order: "ascending"
  stability_required: false
  in_place: true

Example Output:
  ```python
  def quicksort(arr: list[int], low: int = 0, high: int = None) -> list[int]:
      """
      Implements in-place quicksort algorithm for integer arrays.
      
      Time Complexity: O(n log n) average, O(n²) worst case
      Space Complexity: O(log n) due to recursion stack
      
      Args:
          arr: List of integers to sort
          low: Starting index (default: 0)
          high: Ending index (default: len(arr) - 1)
      
      Returns:
          Sorted list (modifies in-place, returns for convenience)
      """
      # Input validation
      if not arr or len(arr) <= 1:
          return arr
      
      if high is None:
          high = len(arr) - 1
      
      # Base case: single element or invalid range
      if low >= high:
          return arr
      
      # Partition and recursively sort
      pivot_index = partition(arr, low, high)
      quicksort(arr, low, pivot_index - 1)
      quicksort(arr, pivot_index + 1, high)
      
      return arr
  
  def partition(arr: list[int], low: int, high: int) -> int:
      """Partition helper using last element as pivot."""
      pivot = arr[high]
      i = low - 1
      
      for j in range(low, high):
          if arr[j] <= pivot:
              i += 1
              arr[i], arr[j] = arr[j], arr[i]
      
      arr[i + 1], arr[high] = arr[high], arr[i + 1]
      return i + 1
  
  # Test Cases
  assert quicksort([]) == []
  assert quicksort([5]) == [5]
  assert quicksort([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
  assert quicksort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]
  assert quicksort([3, 1, 4, 1, 5, 9, 2, 6]) == [1, 1, 2, 3, 4, 5, 6, 9]
  ```

QUALITY_CRITERIA:
  Success defined as:
  - Code executes correctly for all test cases
  - Complexity analysis is accurate
  - Code follows best practices and style guides
  - Documentation is clear and comprehensive
  - Edge cases are handled properly
  - Performance meets expected complexity
  
  Failure defined as:
  - Code produces incorrect results
  - Missing error handling or validation
  - Poor code quality or unclear documentation
  - Incorrect complexity analysis
  - Fails on edge cases
```

---

## 📊 Effectiveness Vector (EV) Score Breakdown

| Metric | Score | Analysis |
|--------|-------|----------|
| **Role Clarity** | 0.94 | Excellent - Expert software engineer with specific skills |
| **Task Precision** | 0.93 | Excellent - Clear deliverables with measurable criteria |
| **Inputs Quality** | 0.92 | Excellent - Comprehensive parameters with types |
| **Constraints Strength** | 0.91 | Excellent - Strong quality, functionality, performance rules |
| **Output Design** | 0.93 | Excellent - 7-section detailed structure |
| **Style Consistency** | 0.90 | Excellent - Professional code documentation standards |
| **Safety Compliance** | 0.92 | Excellent - Input validation and error handling required |
| **Cross-Model Compatibility** | 0.93 | Excellent - Universal technical prompting patterns |

**Total EV Score: 0.92 / 1.00** ✅ **EXCELLENT**

---

## 🔧 Improvements Made

1. **Expert Role Definition**: Software Engineer + Algorithm Specialist
2. **Specific Algorithm Types**: 11 options with custom possibility
3. **Multi-Language Support**: 8 programming languages
4. **Comprehensive Constraints**: Code quality, functionality, performance, documentation
5. **7-Section Output**: Overview, code, complexity, tests, optimization, use cases, comparison
6. **Test Case Requirements**: Minimum 7 cases covering all scenarios
7. **Complexity Analysis**: Best/Average/Worst case with justification
8. **Optimization Guidance**: Current and future optimization notes
9. **Use Case Recommendations**: When to use and when NOT to use
10. **Comparison Table**: Side-by-side algorithm comparison

---

## 💡 Usage Recommendations

### Best AI Models for This Prompt:
1. **GPT-4** - Excellent for complex algorithms and optimization
2. **Claude Opus** - Great for detailed explanations and edge cases
3. **DeepSeek Coder** - Specialized for code generation

### Tips for Best Results:
- Specify exact algorithm_type for targeted implementation
- Choose programming_language based on your project needs
- Set stability_required and in_place based on requirements
- Request include_benchmarks for performance-critical applications
- Provide max_array_size for optimization guidance

### Common Pitfalls to Avoid:
- Don't leave algorithm_type as "custom" without details
- Always specify programming_language
- Include data_type for proper type handling
- Request test cases for validation

---

**Created by:** Ahmed Abu El-Hassan (أحمد أبو الحسن)  
**Framework:** Universal Prompt Engineering Framework v3.0  
**License:** CC BY-NC-SA 4.0

