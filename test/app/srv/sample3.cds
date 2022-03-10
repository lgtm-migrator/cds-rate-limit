namespace test.app.srv.s3;

using {
  cuid,
  managed
} from '@sap/cds/common';


@path : '/sample3'
service Sample2Service {

  // entity level
  @cds.rate.limit : {
    points   : 25,
    duration : 5,
  }
  entity People : cuid, managed {
    Name : String(255);
    Age  : Integer;
  }

}
