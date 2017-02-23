class ShowPage extends React.Component {
  constructor() {
    super()
    this.state = {showForm: false}
    this.handleClick = this.handleClick.bind(this)
  }

  handleClick() {
    this.setState({showForm: true})
  }

  render() {
    return(
      <div>
        <input id="comment-button" type="button" value="Leave a comment" onClick={this.handleClick} />
        {this.state.showForm ? <CommentForm /> : null}
      </div>
    )
  }
}
