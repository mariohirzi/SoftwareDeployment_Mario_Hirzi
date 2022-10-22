const chai = require('chai');
const expect = chai.expect;
const should = chai.should();
const chaiHttp = require('chai-http');

chai.use(chaiHttp);


describe('/first test', function() {

    it('test default API hello world', function() {
        let value1 = 10;
        let value2 = 5;

        expect(value1).to.not.equal(value2);
  });
});
