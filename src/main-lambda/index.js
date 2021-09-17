exports.handler = async event => {
    try {
      console.log(`Event: ${event}`)
      return {
        statusCode: 200,
        body: JSON.stringify('Hello')
      }
    } catch (e) {
      console.log(e)
    }
  }