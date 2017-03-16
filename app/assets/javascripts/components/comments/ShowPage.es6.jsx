class ShowPage extends React.Component {
  constructor() {
    super()
    this.state = {showForm: false, comments: []}
    this.handleClick = this.handleClick.bind(this)
    this.postComment = this.postComment.bind(this)
  }

  postComment(comment) {
    $.ajax({
      method: 'POST',
      url: `/games/1`,
      data: {game: {game_comment: comment}}
    }).done(response => {
      console.log("booohoo", response)
      // this.setState({comments: [response].concat(this.state.comments)})
    })
  }

  handleClick() {
    this.setState({showForm: true})
  }

  render() {
    return(
      <div>
        <input id="comment-button" type="button" value="Leave a comment" onClick={this.handleClick} />
        {this.state.showForm ? <CommentForm postComment={this.postComment} /> : null}
      </div>
    )
  }
}
