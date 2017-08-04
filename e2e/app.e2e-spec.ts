import { KlinikadminPage } from './app.po';

describe('klinikadmin App', () => {
  let page: KlinikadminPage;

  beforeEach(() => {
    page = new KlinikadminPage();
  });

  it('should display welcome message', done => {
    page.navigateTo();
    page.getParagraphText()
      .then(msg => expect(msg).toEqual('Welcome to app!!'))
      .then(done, done.fail);
  });
});
