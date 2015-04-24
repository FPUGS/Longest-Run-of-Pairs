# Longest-Run-of-Pairs
a great example of why imperative programming is lame-o

## Description

Define the term **adjacency** as the longest length of a run of identical pairs in a sequence. In other words, the adjacency of a sequence is the number of pairs you can find in a sequence without shuffling any of the elements.

- Example: the adjacency of an array `[0,0,0]` is `2`, since we can make two pairs `[[0,0], 0]` and `[0, [0,0]]`.
- Another: the adjacency of an array `[0,0,1,0]` is `1`, since we can only make one pair.

Write a function that finds the (longest) adjacency of an array of binary digits (like the above) *if one digit must be flipped.* For example, the adjacency of `[0,0,1,0]` would be `3`, since `1` would be flipped to produce the largest adjacency.

----

solve this using any FP lang you want.  
Haskell, F#, Closure, Ocaml, Scala, Common Lisp, D, Erlang, etc.  
You can solve the same code kata in multiple languages by creating more braches.

----

## To submit your solution

- fork this repo (do not clone, even though you have push access)
- create a directory named `[language]/[your username]`, ex: `ocaml/theRemix`
- work in your directory
- push to your own repo
- when you are ready to submit, create a pull request
- when @theRemix reviews it, he will accept the pull request  
  - or accept your own pull request if you don't want to be reviewed (since you have access to accept it to FPUGS)
- post on Gitter with the link to your fork url

----

![FPUG](http://i.imgur.com/hPTSxfA.png)
