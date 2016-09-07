import React        from 'react';
import { connect }  from 'react-redux';
import { routerActions } from 'react-router-redux';

class AuthenticatedContainer extends React.Component {
  componentDidMount() {
    const { dispatch, currentUser } = this.props;

    if (localStorage.getItem('phoenixAuthToken')) {
      dispatch(Actions.currentUser());
    } else {
      dispatch(routerActions.push('/sign_up'));
    }
  }

  render() {
    return (
      <div>AuthenticatedContainer</div>
    );
  }
}

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});

export default connect(mapStateToProps)(AuthenticatedContainer);
