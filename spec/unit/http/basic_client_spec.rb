#
# Author:: Cameron Cope (<ccope@brightcove.com>)
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'spec_helper'
require 'chef/http/basic_client'

describe "HTTP Connection" do

  let(:uri) { URI("https://example.com:4443") }
  subject { Chef::HTTP::BasicClient.new(uri) }

  describe ".new" do
    it "creates an instance" do
      subject
    end
  end

  describe "#build_http_client" do
    it "should build an http client" do
      subject.build_http_client
    end

    it "should set an open timeout" do
      subject.build_http_client.open_timeout.should_not be_nil
    end
  end
end

