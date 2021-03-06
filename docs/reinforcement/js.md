<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/javascript-logo-64.png">

# JavaScript Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful JavaScript knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

1. Who created JavaScript and in what year?

1. What was JavaScript originally called?

1. Why was JavaScript created?

1. How do you write a line of text to the console?

1. How do you change the text of an element in a web browser document?

1. How do you access the third command line argument of a script, run on the command line, with node.js?

1. Name the 7 data types of JavaScript (as of ES2019). Name the 8th that is coming soon.

1. Does JavaScript have separate types for integers and floating point values? If not, how can you tell whether a number is an integer or not?

1. What are **safe integers** in JavaScript?

1. If `x` has the value `NaN`, what is the value of the expression `x === NaN`? Why? What is the correct way to determine if an expression has the value `NaN`?

1. How can you tell whether string `s` is a substring of string `t`?

1. What two things can you do with backtick-delimited strings you can’t do with strings delimited with apostrophes or quotation marks?

1. Why does `"🤣".length` have the value 2?

1. Give an example that shows the `==` operator is not transitive.

1. Why is `2 && 3` equal to 3, but `2 & 3` equal to 2?

1. Name all the falsy values in JavaScript.

1. How do you determine the type of an expression at runtime?

1. When should you use `let` and when should you use `const`?

1. What bad thing will happen if you forget to use `let`, `const`, or `var` when declaring an identifier?

1. What is the object literal `{ x, y }` a shorthand for?

1. What is the difference between `p.x` and `p[x]`?

1. If `x === 'y'` then what is `{ x: 3, [x]: 5 }` ?

1. Why is `[1,12] < [1,3]` true but `[1,42] < [1,3]` false?

1. How do you write an _object_ to the console (beautifully formatted)?

1. Describe how a prototype-based language (like JavaScript) differs from a class-based language (like Java), in terms of thinking about collections of objects that share the same structure and behavior.

1. Properties defined directly within an object are called ________________ properties. Properties of an object accessible on the object’s prototype chain are called ________________ properties.

1. What do we mean when we say arrays are objects in JavaScript?

1. Describe how `splice` works.

1. What is the **spread operator**? Give an example of its use.

1. You might often see the expression `a.slice()`, for some array `a`. What does this expression do, exactly?

1. How does one best create an array of size 100 in which every element is 0? (Do not write a loop.)

1. Write an equivalent expression to `a.concat(b)`, where `a` and `b` are arrays, using spreads.

1. `a.push()` mutates `a`. How do you do a non-mutating “push“?

1. What does `unshift` do? Does it mutate or not? What does it return?

1. What is the difference between **value types** and **reference types**?

1. Why do you think the JavaScript designer decided that objects should be reference types?

1. Since strings can be very large, you might think strings would be reference types in JavaScript. After all, they are reference types in Java. But in JavaScript, they are considered primitive (value) types. This might lead you to believe JavaScript is necessarily slow because strings are always copied on assignment. However, this is not the case! Why?

1. Write an IIFE that applies the (anonymous, arrow) function that squares its argument to the value 100.

1. In the function definition `function f(x, y) { return [x, y]; }`, what do we call `x` and `y`?

1. In the function call `f(y, z)`, what do we call `y` and `z`?

1. A function is called **higher-order** if it does at least one of two things. What two things?

1. What do the array methods `map`, `filter`, `every`, `some`, `find`, and `findIndex` do?

1. Write the function `function f(x = 3) { return x * y }` (where `y` is some global variable) without using a default parameter.

1. What is a **rest parameter**? Give an example.

1. Can a function definition have multiple rest parameters? Why or why not?

1. One could argue that all non-default parameters are really default parameters. Why?

1. In many languages, assignment has the form IDENTIFIER = EXPRESSION. In JavaScript, the left hand side is _not_ just an identifier. What exactly is the left hand side called?

1. The old-fashioned to write a function that takes in an array and returns the sum of its first and third elements is: `function f(a) {return a[0] + a[2];}` Rewrite this in a modern fashion, where the function parameter is a pattern.

1. Write a function that takes in an object and returns the product of its `x` and `y` properties. If no argument is passed, return 1. Write the function using a pattern for its parameter. Supply defaults so the function body is simply `return x * y;`.

1. Show how to declare the function that is called like this: `push({onTheStack: s, theValue: v})`? Use an object pattern in the parameter list.

1. What are **global scope**, **function scope**, and **block scope**?

1. How do let-bound and var-bound function-scope variables differ? (Make sure the phrase “temporal dead zone” appears in your answer.)

1. Write a function that takes in a number and returns a function that adds that number to its argument. Is the function you wrote higher-order? Why or why not? Does that function illustrate a closure? Why or why not? Does that function illustrate currying? Why or why not?

1. What is currying good for, anyway?

1. Is JavaScript statically-scoped or dynamically scoped?

1. Do JavaScript functions exhibit shallow binding or deep binding?

1. Given `function* f() {yield 1; yield 2; yield 3;}`, what is wrong with writing `for (let i of f) {console.log(i)}`? 

1. Why must (pretty much all reasonable) _methods_ be non-arrow functions?

1. Why should callbacks generally be arrow functions?

1. What does the expression `this` refer to inside of a function called with the `new` operator?

1. Is `this` early-bound or late-bound?

1. For function `f` and object `x`, the expressions `f.call(x, 1, 2)` and `f.apply(x, [1, 2])` produce the same result. Write the equivalent expression using `bind`.

1. JavaScript doesn’t have classes, but it does have the word `class`. But the keyword `class` does declare a function. How is this “function” defined? Give a short example.

1. What happens under the hood when you write `class A extends B`? In particular what does `A.prototype` look like in this case?

1. Why doesn’t Crockford like using `this`?

1. What is the primary disadvantage of the Crockford-classless style of avoiding `this` and prototypes?

1. How do you make a JavaScript object without a prototype?

1. When would you see a `TypeError` thrown? A `RangeError`? A `SyntaxError`? A `ReferenceError`?

1. What is **callback hell**?

1. What is an advantage of promises over callbacks?

1. What exactly _is_ a promise?

1. What does the function `async function five() { return 5; }` actually return?

1. Given `let f = async x => 1` and `let g = async => 2` what do the expressions `f()` and `g()` return? Why? Why is the definition of `g` even acceptable?

1. What are the most common names given to the parameters of the `Promise` constructor? What are they for?

1. What is the difference between `p.then(f, g)` and `p.then(f).catch(g)` for a promise `p`?

1. Why do most API invocations, or operating system calls (like reading and writing files) take in callbacks or return promises?

1. Give the expression, in client-side JavaScript using `fetch`, that hits the (hypothetical) endpoint `https://api.example.com/fortunes?limit=5` and, from its JSON response, places the first result in the DOM into the element with id `fortune`.

1. Does `await` actually wait (block) for anything? It not, what exactly does it do?

1. How does one “wait” for a whole bunch of async functions to all ”finish”?

1. What is the difference between an **accessor property** and a **data property**? (Your answer should include all of the attributes for each kind of property.)

1. How do you make a property read-only?

1. What is the difference between sealing and freezing an object?

1. How do you get the prototype of an object?

1. How do you set an object’s prototype after the object has already been created?

1. What is the difference between `Object.keys` and `Object.getOwnPropertyNames`?

1. How does `Object.entries` work?



