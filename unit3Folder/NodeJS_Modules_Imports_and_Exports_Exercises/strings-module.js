function firstLet(thing){
  return thing[0]
}

function lastLet(thing){
  return thing[thing.length-1]
}

function bigSmall (thing){
  let answer = ""
  for (let i = 0 ; i < thing.length ; i++){
    if (i % 2){
      answer += thing[i].toUpperCase()
    }else{
      answer += thing[i].toLowerCase()
    }
  }
  return answer
}

module.exports.firstLet = firstLet;
module.exports.lastLet = lastLet;
module.exports.bigSmall = bigSmall;
