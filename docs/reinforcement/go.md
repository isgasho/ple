<img src="https://raw.githubusercontent.com/rtoal/polyglot/master/docs/resources/go-logo-64.png">

# Go Reinforcement Practice

Here are a set of problems designed to help you reinforce and retain some useful Go knowledge. If you are an [Anki](https://apps.ankiweb.net/) fan, consider adding some of these questions into a deck. 😀

<details><summary>Who created Go and in what year?</summary>
Google, 2009.
</details>

<details><summary>What kind of animal is the mascot for Go?</summary>
A gopher
</details>

<details><summary>What kinds of problems was Go crated to solve?</summary>
Large scale “Google-sized” problems, running on distributed systems that must be efficient and reliable.
</details>

<details><summary>Go programs begin by calling a function called ________________ inside a package called ________________.</summary>
<pre>
main
main
</pre>
</details>

<details><summary>What line of code writes <code>"Hello, world?</code>?</summary>
<pre>
fmt.Printf("Hello, world")
</pre>
</details>

<details><summary>Must every Go file have a package declaration or is it optional?</summary>
It is required. There is no such thing as a default package.
</details>

<details><summary>How do you get the command line arguments in a Go program?</summary>
They are in <code>os.Args</code>. (You have to import <code>os</code>.)
</details>

<details><summary>How do you split a string <code>s</code> on separator <code>sep</code>? How do you join the elements of <code>s</code> with separator <code>sep</code>?</summary>
<pre>
strings.Split(s, sep)
strings.Join(s, sep)
</pre>
</details>

<details><summary>How do you pronounce the type <code>[]int</code>?</summary>
Slice of integers.
</details>

<details><summary>What does the conditional expression look like in Go?</summary>
Go does not have a conditional expression. You have to use an <code>if</code> statement.
</details>

<details><summary>How do you swap the values of two variables?</summary>
<pre>
x, y = y, x
</pre>
</details>

<details><summary>Show four different syntaxes for declaring a local variable <code>found</code> with initial value <code>false</code>.</summary>
<pre>
var found bool
var found bool = false
var found = false
found := false
</pre>
</details>

<details><summary>Can a variable ever be underfined in Go?</summary>
No, if a variable is not explictly initialized in code, Go will initialize it with the zero-value of its type.
</details>

<details><summary>How do you write a while-loop in Go?</summary>
<pre>
for <i>condition</i> { <i>body</i> }
</pre>
</details>

<details><summary>How do you iterate through the indices of array <code>a</code>?</summary>
<pre>
for i := range a { body }
</pre>
</details>

<details><summary>How do you iterate through the values of array <code>a</code>?</summary>
<pre>
for _, x := range a { body }
</pre>
</details>

<details><summary>Name all of the built-in integer types in Go. Include all aliases.</summary>
<pre>
int8(byte)   int16   int32(rune)   int64
uint8   uint16   uint32   uint64
int   uint   uintptr
</pre>
</details>

<details><summary>Name all of the built-in floating point and complex number types in Go.</summary>
<pre>
float32   float64
complex64   complex128
</pre>
</details>

<details><summary>For each of the following types, give their default values: <code>int32</code>, <code>complex128</code>, <code>bool</code>, <code>string</code>.</summary>
<pre>
0
0+0i
false
""
</pre>
</details>

<details><summary>What is the value of <code>len("こんにちは世界")</code>? Why is it not 7? What expression, using <code>len</code> and the string <code>"こんにちは世界"</code>, does give 7?</summary>
<code>len("こんにちは世界")</code> is 21 because the UTF-8 encoding of the string has 21 bytes (each rune happens to be encoded in three bytes). The expression <code>len([]rune("こんにちは世界"))</code> is 7, because casting a string to a rune slice will give you a slice with each rune (code point).
</details>

<details><summary>Name the 8 composite types of Go.</summary>
Arrays, functions, structs, maps, pointers, slices, interfaces, channels.
</details>

<details><summary>What are the default values of the types <code>[3]bool</code>, <code>[]string</code>, <code>struct {X int; Y string}</code>, <code>map[string][float64]</code>?</summary>
<pre>
[false false false]
[]
{0 ""}
[]
</pre>
</details>

<details><summary>What are the default values of the types <code>func(int)int</code>, <code>\*complex128</code>, <code>interface{}</code>, <code>chan bool</code>?</summary>
<pre>
nil
nil
nil
nil
</pre>
</details>

<details><summary>Give a Go function called <code>DivRem</code> which accepts two integers, <code>x</code> and <code>y</code>, and returns their integer quotient and integer remainder, respectively. Return the values in a single return statement.</summary>
<pre>
func DivRem(x, y int) (int, int) {
    return x / y, x % y
}
</pre>
</details>

<details><summary>Give a Go function called <code>DivRem</code> which accepts two integers, <code>x</code> and <code>y</code>, and returns their integer quotient and integer remainder, respectively. Use named return values.</summary>
<pre>
func DivRem(x, y int) (quotent int, remainder int) {
    quotient = x / y
    remainder = x % y
    return
}
</pre>
</details>

<details><summary>Give an expression for a map in which <code>"Dog"</code> and <code>"Rat"</code> mapped to <code>true</code> but <code>"Cat"</code> mapped to <code>false</code>.</summary>
<pre>
map[string]bool{"Dog": true, "Rat": true, "Cat": false}
</pre>
</details>

<details><summary>How do you add or update the corresponding value at key <code>x</code> in map <code>p</code> to be 21?</summary>
p["x"] = 21
</details>

<details><summary>How do you print each of the key-value pairs of map <code>p</code>, one pair per line?</summary>
<pre>
for k, v := range p {
    fmt.Println(k, v)
}
</pre>
</details>

<details><summary>Can we ever write an expression like <code>return (x, y)</code> in Go? Why or why not?</summary>
No. Go does not have tuples (nor a comma operator), so the expression <code>(, y)</code> is a syntax error. You <em>can</em> however write <code>return x, y</code>. But note return multiple values is absolutely <em>not</em> the same as returning a tuple.
</details>

<details><summary>Go doesn’t have a <code>new</code> operator to allocate memory dynamically as does C++ and Java. What do you do instead to allocate memory? Why does this work?</summary>
You simply write a pointer to an expression, e.g., <code>&amp;Tree{value, nil}</code>. Although this seems to be creating a pointer to a temporary value in the current stack frame, Go will escape it to the heap if necessary.
</details>

<details><summary>How do you write the slice containing the values <code>"thelma"</code> and <code>"louise"</code>, in that order?</summary>
<pre>
[]string{"thelma", "louise"}
</pre>
</details>

<details><summary>How do you get the length of a slice <code>a</code>? How do you get its capacity?</summary>
<pre>
len(a)
cap(a)
</pre>
</details>

<details><summary>What do the expressions <code>make([]bool, 5)</code> and <code>make([]bool, 5, 8)</code> do?</summary>
The first makes a slice whose length and capacity are both 5. The second makes a slice with length 5 and capacity 8.
</details>

<details><summary>How does the value <code>make([]int, 5)</code> display when printed with <code>fmt.Println</code>?</summary>
<pre>
[0 0 0 0 0]
</pre>
</details>

<details><summary>Given <code>var a [10]int; b := a[5:7]; c := a[2:6];</code>, what are the lengths and capacities of <code>b</code> and <code>c</code>?</summary>
Length of b = 2<br>
Capacity of b = 5<br>
Length of c = 4<br>
Capacity of c = 8
</details>

<details><summary>Given integer slices <code>a</code> and <code>b</code>, how do you append the values 5 and 8 to slice <code>s</code>? How do you append all of slice <code>t</code> to slice <code>s</code>?</summary>
<pre>
s = append(s, 5, 8)
s = append(s, t...)
</pre>
</details>

<details><summary>How do you copy one array into another?</summary>
Just assign it with <code>=</code>.
</details>

<details><summary>If a function is declared to take in a slice parameter, can you pass it an array? Why or why not? If not, how can you get a function operating on a slice to work on your array?</summary>
No, arrays are not slices. They are not compatible, nor will Go ever implcitly covert an array to a slice. If you have an array <code>a</code>, then pass <code>a[:]</code> to the function.
</details>

<details><summary>What is the most significant way in which Go interfaces differ from those in Java?</summary>
In Java, a class must explicitly state that it is implementing an interface; in Go, a struct implements in interface simply by defining the appropriate methods.
</details>

<details><summary>Define an interface called <code>TripleJumper</code> for objects that can hop, skip, and jump.</summary>
<pre>
type TripleJumper interface {
    Hop()
    Skip()
    Jump()
}
</pre>
</details>

<details><summary>Give an expression for a slice containing the values <code>3</code>, <code>"dog"</code>, and <code>true</code>.</summary>
<pre>
[]interface{}{3, "dog", true}
</pre>
</details>

<details><summary></summary>
</details>

<details><summary></summary>
</details>

<details><summary></summary>
</details>

