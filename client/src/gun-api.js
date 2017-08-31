const status = (resp) => {
  if (resp.status >= 200 && resp.status < 300) {
    return resp;
  }

  const error = new Error(`HTTP Error ${resp.statusText}`);
  error.status = resp.statusText;
  error.resp = resp;
  console.log(error); // eslint-disable-line no-console
  throw error;
};

const index = (params, cb) => {
  return fetch(`api/guns?id=${ params.id }`, {
    accept: 'application/vnd.api+json',
    method: 'get'
  }).then(status)
    .then(resp => resp.json())
    .then(cb);
};

const gunAPI = { index };
export default gunAPI;
