exports.handler = async event => {
    try {
      console.log(`Event: ${event}`)
      return {
        statusCode: 200,
        body: 'Hello Im auth'
      }
    } catch (e) {
      console.log(e)
    }
  }