import React from 'react';
import { connect }          from 'react-redux';

class SessionsNew extends React.Component {
  render() {
    return (
      <div>
        <h1>SessionsNew</h1>
      </div>
    );
  }
}

const mapStateToProps = (state) => ({});

export default connect(mapStateToProps)(SessionsNew);
