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
      url: '/games/:game_id/game_comments'
    }).done(response => {
      this.setState({comments: response})
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
