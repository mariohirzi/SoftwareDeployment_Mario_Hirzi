const chai = require('chai');
const expect = chai.expect;
const should = chai.should();
const chaiHttp = require('chai-http');

chai.use(chaiHttp);


describe('/first test', () => {

    it('test default API hello world', (done) => {
        chai.request('http://localhost:3000' )
        .get('/')
        .end((err,res) => {
            res.should.have.status(200);
            done();
        })
  });
});
