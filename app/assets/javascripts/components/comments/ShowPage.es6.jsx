class ShowPage extends React.Component {
  constructor() {
    super()
    this.state = {commentForm: ""}
    this.handleClick = this.handleClick.bind(this)
  }

  handleClick(event) {
    event.preventDefault()
    $.ajax({
      url: '/game_comments/new'
    }).done(response => {
      console.log(response)
    })
    // console.log("click", event.target)
    // this.setState({commentForm: <CommentForm />})
  }

  render() {
    return(
      <div>
        <form id="comment-button" onClick={this.handleClick}>
          <input type="button" value="Leave a comment" />
        </form>
      </div>
    )
  }
}
