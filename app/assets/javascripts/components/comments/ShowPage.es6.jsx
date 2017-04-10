class ShowPage extends React.Component {
  constructor() {
    super()
    this.state = {showForm: false, comments: []}
    this.handleClick = this.handleClick.bind(this)
    this.postGameComment = this.postGameComment.bind(this)
  }

  postGameComment(gameComment) {
    $.ajax({
      method: 'POST',
      url: `/games/1`,
      data: {game_comment: {comment: gameComment}}
    }).done((response) => {
      // console.log("booohoo", response)
      this.setState({comments: [response].concat(this.state.comments)})
      // this.setState({comments: [response, ...this.state.comments]})
    })
    debugger
  }

  handleClick() {
    this.setState({showForm: true})
  }

  render() {
    return(
      <div>
        <input id="comment-button" type="button" value="Leave a comment" onClick={this.handleClick} />
        {this.state.showForm ? <CommentForm postGameComment={this.postGameComment} /> : null}
      </div>
    )
  }
}
