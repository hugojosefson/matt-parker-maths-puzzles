#!/usr/bin/env node

// Puzzle for Submission: Rearrange the numbers from 1-9, such that all adjacent pairs sum to a prime number.
// https://www.think-maths.co.uk/primepairs

const range = (start, length) => Array.from(new Array(length), (x, i) => i + start);

const primepairs = max => {
  const numbers = range(1, max)
  
}

console.log(primepairs(9))
