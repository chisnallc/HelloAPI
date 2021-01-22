exports.handler = async event => {
    try {
      console.log(`Event: ${event}`)
    } catch (e) {
      console.log(e)
    }
  }