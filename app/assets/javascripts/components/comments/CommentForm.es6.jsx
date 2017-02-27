class CommentForm extends React.Component {
  constructor() {
    super()
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleSubmit(event) {
    event.preventDefault()
    let commentInput = this.refs.commentForm
    console.log("hi", this.refs.commentForm.value)
    this.props.postComment(commentInput.value)
  }

  render() {
    return(
      <div>
        <form className="comment-form" onSubmit={this.handleSubmit}>
          <textarea ref="commentForm" placeholder="your comment" rows="5" cols="30" />
          <input type="submit" value="Submit" />
        </form>
      </div>
    )
  }
}
